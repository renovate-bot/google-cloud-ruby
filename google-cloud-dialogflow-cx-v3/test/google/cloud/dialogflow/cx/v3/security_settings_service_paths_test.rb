# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/dialogflow/cx/v3/security_settings_service"

class ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::ClientPathsTest < Minitest::Test
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

  def test_deidentify_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.deidentify_template_path organization: "value0", location: "value1", deidentify_template: "value2"
      assert_equal "organizations/value0/locations/value1/deidentifyTemplates/value2", path

      path = client.deidentify_template_path project: "value0", location: "value1", deidentify_template: "value2"
      assert_equal "projects/value0/locations/value1/deidentifyTemplates/value2", path
    end
  end

  def test_inspect_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.inspect_template_path organization: "value0", location: "value1", inspect_template: "value2"
      assert_equal "organizations/value0/locations/value1/inspectTemplates/value2", path

      path = client.inspect_template_path project: "value0", location: "value1", inspect_template: "value2"
      assert_equal "projects/value0/locations/value1/inspectTemplates/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_security_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.security_settings_path project: "value0", location: "value1", security_settings: "value2"
      assert_equal "projects/value0/locations/value1/securitySettings/value2", path
    end
  end
end
