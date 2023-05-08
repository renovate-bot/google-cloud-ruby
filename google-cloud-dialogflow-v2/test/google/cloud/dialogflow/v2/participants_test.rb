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

require "google/cloud/dialogflow/v2/participant_pb"
require "google/cloud/dialogflow/v2/participant_services_pb"
require "google/cloud/dialogflow/v2/participants"

class ::Google::Cloud::Dialogflow::V2::Participants::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_participant
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Participant.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    participant = {}

    create_participant_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_participant, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateParticipantRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Participant), request["participant"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_participant_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_participant({ parent: parent, participant: participant }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_participant parent: parent, participant: participant do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_participant ::Google::Cloud::Dialogflow::V2::CreateParticipantRequest.new(parent: parent, participant: participant) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_participant({ parent: parent, participant: participant }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_participant(::Google::Cloud::Dialogflow::V2::CreateParticipantRequest.new(parent: parent, participant: participant), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_participant_client_stub.call_rpc_count
    end
  end

  def test_get_participant
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Participant.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_participant_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_participant, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetParticipantRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_participant_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_participant({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_participant name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_participant ::Google::Cloud::Dialogflow::V2::GetParticipantRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_participant({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_participant(::Google::Cloud::Dialogflow::V2::GetParticipantRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_participant_client_stub.call_rpc_count
    end
  end

  def test_list_participants
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListParticipantsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_participants_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_participants, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListParticipantsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_participants_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_participants({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_participants parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_participants ::Google::Cloud::Dialogflow::V2::ListParticipantsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_participants({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_participants(::Google::Cloud::Dialogflow::V2::ListParticipantsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_participants_client_stub.call_rpc_count
    end
  end

  def test_update_participant
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Participant.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    participant = {}
    update_mask = {}

    update_participant_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_participant, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::UpdateParticipantRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Participant), request["participant"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_participant_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_participant({ participant: participant, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_participant participant: participant, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_participant ::Google::Cloud::Dialogflow::V2::UpdateParticipantRequest.new(participant: participant, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_participant({ participant: participant, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_participant(::Google::Cloud::Dialogflow::V2::UpdateParticipantRequest.new(participant: participant, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_participant_client_stub.call_rpc_count
    end
  end

  def test_analyze_content
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::AnalyzeContentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    participant = "hello world"
    text_input = {}
    reply_audio_config = {}
    query_params = {}
    assist_query_params = {}
    cx_parameters = {}
    request_id = "hello world"

    analyze_content_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :analyze_content, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::AnalyzeContentRequest, request
      assert_equal "hello world", request["participant"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::TextInput), request["text_input"]
      assert_equal :text_input, request.input
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::OutputAudioConfig), request["reply_audio_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::QueryParameters), request["query_params"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::AssistQueryParameters), request["assist_query_params"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Struct), request["cx_parameters"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, analyze_content_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.analyze_content({ participant: participant, text_input: text_input, reply_audio_config: reply_audio_config, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.analyze_content participant: participant, text_input: text_input, reply_audio_config: reply_audio_config, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.analyze_content ::Google::Cloud::Dialogflow::V2::AnalyzeContentRequest.new(participant: participant, text_input: text_input, reply_audio_config: reply_audio_config, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.analyze_content({ participant: participant, text_input: text_input, reply_audio_config: reply_audio_config, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.analyze_content(::Google::Cloud::Dialogflow::V2::AnalyzeContentRequest.new(participant: participant, text_input: text_input, reply_audio_config: reply_audio_config, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, analyze_content_client_stub.call_rpc_count
    end
  end

  def test_streaming_analyze_content
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    participant = "hello world"
    audio_config = {}
    reply_audio_config = {}
    input_audio = "hello world"
    query_params = {}
    assist_query_params = {}
    cx_parameters = {}
    enable_partial_automated_agent_reply = true
    enable_debugging_info = true

    streaming_analyze_content_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :streaming_analyze_content, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, streaming_analyze_content_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest.new participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_analyze_content enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest.new participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info
      stream_input = Gapic::StreamInput.new
      client.streaming_analyze_content stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest.new participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_analyze_content enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info }
      request_proto = ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest.new participant: participant, audio_config: audio_config, reply_audio_config: reply_audio_config, input_audio: input_audio, query_params: query_params, assist_query_params: assist_query_params, cx_parameters: cx_parameters, enable_partial_automated_agent_reply: enable_partial_automated_agent_reply, enable_debugging_info: enable_debugging_info
      stream_input = Gapic::StreamInput.new
      client.streaming_analyze_content stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, streaming_analyze_content_client_stub.call_rpc_count
      streaming_analyze_content_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Dialogflow::V2::StreamingAnalyzeContentRequest, r
          assert_equal "hello world", r["participant"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::InputAudioConfig), r["audio_config"]
          assert_equal :audio_config, r.config
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::OutputAudioConfig), r["reply_audio_config"]
          assert_equal "hello world", r["input_audio"]
          assert_equal :input_audio, r.input
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::QueryParameters), r["query_params"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::AssistQueryParameters), r["assist_query_params"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Struct), r["cx_parameters"]
          assert_equal true, r["enable_partial_automated_agent_reply"]
          assert_equal true, r["enable_debugging_info"]
        end
      end
    end
  end

  def test_suggest_articles
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::SuggestArticlesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    latest_message = "hello world"
    context_size = 42
    assist_query_params = {}

    suggest_articles_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_articles, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["latest_message"]
      assert_equal 42, request["context_size"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::AssistQueryParameters), request["assist_query_params"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_articles_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_articles({ parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_articles parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_articles ::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest.new(parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_articles({ parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_articles(::Google::Cloud::Dialogflow::V2::SuggestArticlesRequest.new(parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_articles_client_stub.call_rpc_count
    end
  end

  def test_suggest_faq_answers
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    latest_message = "hello world"
    context_size = 42
    assist_query_params = {}

    suggest_faq_answers_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_faq_answers, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["latest_message"]
      assert_equal 42, request["context_size"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::AssistQueryParameters), request["assist_query_params"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_faq_answers_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_faq_answers({ parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_faq_answers parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_faq_answers ::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersRequest.new(parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_faq_answers({ parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_faq_answers(::Google::Cloud::Dialogflow::V2::SuggestFaqAnswersRequest.new(parent: parent, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_faq_answers_client_stub.call_rpc_count
    end
  end

  def test_suggest_smart_replies
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    current_text_input = {}
    latest_message = "hello world"
    context_size = 42

    suggest_smart_replies_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_smart_replies, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::TextInput), request["current_text_input"]
      assert_equal "hello world", request["latest_message"]
      assert_equal 42, request["context_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_smart_replies_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_smart_replies({ parent: parent, current_text_input: current_text_input, latest_message: latest_message, context_size: context_size }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_smart_replies parent: parent, current_text_input: current_text_input, latest_message: latest_message, context_size: context_size do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_smart_replies ::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesRequest.new(parent: parent, current_text_input: current_text_input, latest_message: latest_message, context_size: context_size) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_smart_replies({ parent: parent, current_text_input: current_text_input, latest_message: latest_message, context_size: context_size }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_smart_replies(::Google::Cloud::Dialogflow::V2::SuggestSmartRepliesRequest.new(parent: parent, current_text_input: current_text_input, latest_message: latest_message, context_size: context_size), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_smart_replies_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Participants::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Participants::Client::Configuration, config
  end
end
