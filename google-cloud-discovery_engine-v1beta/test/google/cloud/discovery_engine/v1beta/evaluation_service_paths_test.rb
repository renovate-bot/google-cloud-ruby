# frozen_string_literal: true

# Copyright 2024 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/discovery_engine/v1beta/evaluation_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_branch_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.branch_path project: "value0", location: "value1", data_store: "value2", branch: "value3"
      assert_equal "projects/value0/locations/value1/dataStores/value2/branches/value3", path

      path = client.branch_path project: "value0", location: "value1", collection: "value2", data_store: "value3", branch: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3/branches/value4", path
    end
  end

  def test_data_store_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_store_path project: "value0", location: "value1", data_store: "value2"
      assert_equal "projects/value0/locations/value1/dataStores/value2", path

      path = client.data_store_path project: "value0", location: "value1", collection: "value2", data_store: "value3"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3", path
    end
  end

  def test_evaluation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.evaluation_path project: "value0", location: "value1", evaluation: "value2"
      assert_equal "projects/value0/locations/value1/evaluations/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_sample_query_set_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.sample_query_set_path project: "value0", location: "value1", sample_query_set: "value2"
      assert_equal "projects/value0/locations/value1/sampleQuerySets/value2", path
    end
  end

  def test_serving_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.serving_config_path project: "value0", location: "value1", data_store: "value2", serving_config: "value3"
      assert_equal "projects/value0/locations/value1/dataStores/value2/servingConfigs/value3", path

      path = client.serving_config_path project: "value0", location: "value1", collection: "value2", data_store: "value3", serving_config: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3/servingConfigs/value4", path

      path = client.serving_config_path project: "value0", location: "value1", collection: "value2", engine: "value3", serving_config: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/engines/value3/servingConfigs/value4", path
    end
  end

  def test_session_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::EvaluationService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.session_path project: "value0", location: "value1", data_store: "value2", session: "value3"
      assert_equal "projects/value0/locations/value1/dataStores/value2/sessions/value3", path

      path = client.session_path project: "value0", location: "value1", collection: "value2", data_store: "value3", session: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3/sessions/value4", path

      path = client.session_path project: "value0", location: "value1", collection: "value2", engine: "value3", session: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/engines/value3/sessions/value4", path
    end
  end
end
