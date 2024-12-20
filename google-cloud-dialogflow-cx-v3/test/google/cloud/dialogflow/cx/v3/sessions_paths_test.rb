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

require "google/cloud/dialogflow/cx/v3/sessions"

class ::Google::Cloud::Dialogflow::CX::V3::Sessions::ClientPathsTest < Minitest::Test
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

  def test_data_store_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_store_path project: "value0", location: "value1", data_store: "value2"
      assert_equal "projects/value0/locations/value1/dataStores/value2", path

      path = client.data_store_path project: "value0", location: "value1", collection: "value2", data_store: "value3"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3", path
    end
  end

  def test_entity_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entity_type_path project: "value0", location: "value1", agent: "value2", entity_type: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/entityTypes/value3", path
    end
  end

  def test_intent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.intent_path project: "value0", location: "value1", agent: "value2", intent: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/intents/value3", path
    end
  end

  def test_page_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.page_path project: "value0", location: "value1", agent: "value2", flow: "value3", page: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/pages/value4", path
    end
  end

  def test_session_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.session_path project: "value0", location: "value1", agent: "value2", session: "value3"
      assert_equal "projects/value0/locations/value1/agents/value2/sessions/value3", path

      path = client.session_path project: "value0", location: "value1", agent: "value2", environment: "value3", session: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/environments/value3/sessions/value4", path
    end
  end

  def test_session_entity_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.session_entity_type_path project: "value0", location: "value1", agent: "value2", session: "value3", entity_type: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/sessions/value3/entityTypes/value4", path

      path = client.session_entity_type_path project: "value0", location: "value1", agent: "value2", environment: "value3", session: "value4", entity_type: "value5"
      assert_equal "projects/value0/locations/value1/agents/value2/environments/value3/sessions/value4/entityTypes/value5", path
    end
  end

  def test_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.version_path project: "value0", location: "value1", agent: "value2", flow: "value3", version: "value4"
      assert_equal "projects/value0/locations/value1/agents/value2/flows/value3/versions/value4", path
    end
  end
end
