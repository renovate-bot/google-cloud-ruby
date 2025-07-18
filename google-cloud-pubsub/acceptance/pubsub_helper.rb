# Copyright 2015 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "simplecov"

gem "minitest"
require "minitest/autorun"
require "minitest/focus"
require "minitest/rg"
require "google/cloud/pubsub"

# Generate JUnit format test reports
if ENV["GCLOUD_TEST_GENERATE_XML_REPORT"]
  require "minitest/reporters"
  Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new]
end

# Create shared pubsub object so we don't create new for each test
$pubsub = Google::Cloud::PubSub.new
$topic_admin = $pubsub.topic_admin
$subscription_admin = $pubsub.subscription_admin
$schema_admin = $pubsub.schemas

# Dead Letter Queue (DLQ) testing requires IAM bindings to the Cloud Pub/Sub service account that is automatically
# created and managed by the service team in a private project.
# Format: `service-${GCLOUD_PROJECT_NUMBER}@gcp-sa-pubsub.iam.gserviceaccount.com`
$project_number = ENV["GCLOUD_PROJECT_NUMBER"]

module Acceptance
  ##
  # Test class for running against a PubSub instance.
  # Ensures that there is an active connection for the tests to use.
  #
  # This class can be used with the spec DSL.
  # To do so, add :pubsub to describe:
  #
  #   describe "My PubSub Test", :pubsub do
  #     it "does a thing" do
  #       your.code.must_be :thing?
  #     end
  #   end
  class PubsubTest < Minitest::Test
    attr_accessor :pubsub

    ##
    # Setup project based on available ENV variables
    def setup
      @pubsub = $pubsub

      refute_nil @pubsub, "You do not have an active pubsub to run the tests."

      super
    end

    def wait_for_condition description: nil, retries: 10, &callback
      count = 0
      while count <= retries do
        result = callback.call
        break if result
        count += 1
        puts "The #{description} callback has not been satisfied yet. Sleeping for #{count*count} second(s) and retrying."
        sleep count*count
      end
      result
    end

    # Add spec DSL
    extend Minitest::Spec::DSL

    # Register this spec type for when :pubsub is used.
    register_spec_type(self) do |desc, *addl|
      addl.include? :pubsub
    end

    def self.run_one_method klass, method_name, reporter
      reported_result = nil
      reporter.prerecord klass, method_name
      (1..3).each do |try|
        result = Minitest.run_one_method(klass, method_name)
        if result.passed? || result.skipped?
          reported_result = result
          break
        elsif try == 1
          # Capture the first failure or error, since later second-order errors may hide it. Typically these are due to
          # uniqueness constraints: Google::Cloud::AlreadyExistsError: 6:Resource already exists in the project
          reported_result = result
        end
        puts "#{klass}##{method_name} (failed attempt: #{try})"
      end
      reporter.record reported_result
    end
  end
end

# Create buckets to be shared with all the tests
require "time"
require "securerandom"
t = Time.now.utc.iso8601.gsub ":", "-"
$topic_prefix = "ruby-topic-#{t}-#{SecureRandom.hex(4)}".downcase
$topic_names = 12.times.map { "#{$topic_prefix}-#{SecureRandom.hex(4)}".downcase }
$snapshot_prefix = "ruby-snp-#{t}-#{SecureRandom.hex(4)}".downcase
$snapshot_names = 3.times.map { "#{$snapshot_prefix}-#{SecureRandom.hex(4)}".downcase }
$schema_prefix = "ruby-schema-#{t}-#{SecureRandom.hex(4)}".downcase
$schema_names = 3.times.map { "#{$schema_prefix}-#{SecureRandom.hex(4)}".downcase }

def clean_up_pubsub_topics
  puts "Cleaning up pubsub topics after tests."
  $topic_admin.list_topics(project: $pubsub.project_path).each do |topic|
    if topic.name.include? $topic_prefix
      response = $topic_admin.list_topic_subscriptions(topic: topic.name)
      response.subscriptions.each do |subscription|
        $subscription_admin.delete_subscription(subscription: subscription)
      end
    end
  end
rescue => e
  puts "Error while cleaning up pubsub topics after tests.\n\n#{e}"
end

def clean_up_pubsub_snapshots
  puts "Cleaning up pubsub snapshots after tests."
  
  $subscription_admin.list_snapshots(project: $pubsub.project_path).each do |snapshot|
    if snapshot.name.include? $snapshot_prefix
      $subscription_admin.delete_snapshot(snapshot: snapshot.name)
    end
  end
rescue => e
  puts "Error while cleaning up pubsub snapshots after tests.\n\n#{e}"
end

def clean_up_pubsub_schemas
  puts "Cleaning up pubsub schemas after tests."
  $schema_admin.list_schemas(parent: $pubsub.project_path).each do |schema|
    if schema.name.include? $schema_prefix
      $schema_admin.delete_schema name: schema.name
    end
  end
rescue => e
  puts "Error while cleaning up pubsub schemas after tests.\n\n#{e}"
end

Minitest.after_run do
  clean_up_pubsub_topics
  clean_up_pubsub_schemas
  clean_up_pubsub_snapshots
  unless $project_number
    puts "The Dead Letter Queue (DLQ) tests were not run. To enable, ensure that " \
         "GCLOUD_PROJECT_NUMBER is present in the environment in order to bind IAM permissions to " \
         "service-${GCLOUD_PROJECT_NUMBER}@gcp-sa-pubsub.iam.gserviceaccount.com"
  end
end
