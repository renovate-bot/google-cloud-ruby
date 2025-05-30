# frozen_string_literal: true

# Copyright 2025 Google LLC
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
require "gapic/rest"
require "google/cloud/chronicle/v1/data_access_control_pb"
require "google/cloud/chronicle/v1/data_access_control_service/rest"


class ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

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

  def test_create_data_access_label
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessLabel.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    data_access_label = {}
    data_access_label_id = "hello world"

    create_data_access_label_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_create_data_access_label_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_data_access_label_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_data_access_label({ parent: parent, data_access_label: data_access_label, data_access_label_id: data_access_label_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_data_access_label parent: parent, data_access_label: data_access_label, data_access_label_id: data_access_label_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_data_access_label ::Google::Cloud::Chronicle::V1::CreateDataAccessLabelRequest.new(parent: parent, data_access_label: data_access_label, data_access_label_id: data_access_label_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_data_access_label({ parent: parent, data_access_label: data_access_label, data_access_label_id: data_access_label_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_data_access_label(::Google::Cloud::Chronicle::V1::CreateDataAccessLabelRequest.new(parent: parent, data_access_label: data_access_label, data_access_label_id: data_access_label_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_data_access_label_client_stub.call_count
      end
    end
  end

  def test_get_data_access_label
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessLabel.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_data_access_label_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_get_data_access_label_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_data_access_label_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_data_access_label({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_data_access_label name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_data_access_label ::Google::Cloud::Chronicle::V1::GetDataAccessLabelRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_data_access_label({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_data_access_label(::Google::Cloud::Chronicle::V1::GetDataAccessLabelRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_data_access_label_client_stub.call_count
      end
    end
  end

  def test_list_data_access_labels
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListDataAccessLabelsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_data_access_labels_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_list_data_access_labels_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_data_access_labels_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_data_access_labels({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_data_access_labels parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_data_access_labels ::Google::Cloud::Chronicle::V1::ListDataAccessLabelsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_data_access_labels({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_data_access_labels(::Google::Cloud::Chronicle::V1::ListDataAccessLabelsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_data_access_labels_client_stub.call_count
      end
    end
  end

  def test_update_data_access_label
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessLabel.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    data_access_label = {}
    update_mask = {}

    update_data_access_label_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_update_data_access_label_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_data_access_label_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_data_access_label({ data_access_label: data_access_label, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_data_access_label data_access_label: data_access_label, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_data_access_label ::Google::Cloud::Chronicle::V1::UpdateDataAccessLabelRequest.new(data_access_label: data_access_label, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_data_access_label({ data_access_label: data_access_label, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_data_access_label(::Google::Cloud::Chronicle::V1::UpdateDataAccessLabelRequest.new(data_access_label: data_access_label, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_data_access_label_client_stub.call_count
      end
    end
  end

  def test_delete_data_access_label
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_data_access_label_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_delete_data_access_label_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_data_access_label_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_data_access_label({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_data_access_label name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_data_access_label ::Google::Cloud::Chronicle::V1::DeleteDataAccessLabelRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_data_access_label({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_data_access_label(::Google::Cloud::Chronicle::V1::DeleteDataAccessLabelRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_data_access_label_client_stub.call_count
      end
    end
  end

  def test_create_data_access_scope
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessScope.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    data_access_scope = {}
    data_access_scope_id = "hello world"

    create_data_access_scope_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_create_data_access_scope_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_data_access_scope_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_data_access_scope({ parent: parent, data_access_scope: data_access_scope, data_access_scope_id: data_access_scope_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_data_access_scope parent: parent, data_access_scope: data_access_scope, data_access_scope_id: data_access_scope_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_data_access_scope ::Google::Cloud::Chronicle::V1::CreateDataAccessScopeRequest.new(parent: parent, data_access_scope: data_access_scope, data_access_scope_id: data_access_scope_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_data_access_scope({ parent: parent, data_access_scope: data_access_scope, data_access_scope_id: data_access_scope_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_data_access_scope(::Google::Cloud::Chronicle::V1::CreateDataAccessScopeRequest.new(parent: parent, data_access_scope: data_access_scope, data_access_scope_id: data_access_scope_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_data_access_scope_client_stub.call_count
      end
    end
  end

  def test_get_data_access_scope
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessScope.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_data_access_scope_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_get_data_access_scope_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_data_access_scope_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_data_access_scope({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_data_access_scope name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_data_access_scope ::Google::Cloud::Chronicle::V1::GetDataAccessScopeRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_data_access_scope({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_data_access_scope(::Google::Cloud::Chronicle::V1::GetDataAccessScopeRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_data_access_scope_client_stub.call_count
      end
    end
  end

  def test_list_data_access_scopes
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::ListDataAccessScopesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_data_access_scopes_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_list_data_access_scopes_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_data_access_scopes_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_data_access_scopes({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_data_access_scopes parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_data_access_scopes ::Google::Cloud::Chronicle::V1::ListDataAccessScopesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_data_access_scopes({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_data_access_scopes(::Google::Cloud::Chronicle::V1::ListDataAccessScopesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_data_access_scopes_client_stub.call_count
      end
    end
  end

  def test_update_data_access_scope
    # Create test objects.
    client_result = ::Google::Cloud::Chronicle::V1::DataAccessScope.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    data_access_scope = {}
    update_mask = {}

    update_data_access_scope_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_update_data_access_scope_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_data_access_scope_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_data_access_scope({ data_access_scope: data_access_scope, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_data_access_scope data_access_scope: data_access_scope, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_data_access_scope ::Google::Cloud::Chronicle::V1::UpdateDataAccessScopeRequest.new(data_access_scope: data_access_scope, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_data_access_scope({ data_access_scope: data_access_scope, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_data_access_scope(::Google::Cloud::Chronicle::V1::UpdateDataAccessScopeRequest.new(data_access_scope: data_access_scope, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_data_access_scope_client_stub.call_count
      end
    end
  end

  def test_delete_data_access_scope
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_data_access_scope_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::ServiceStub.stub :transcode_delete_data_access_scope_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_data_access_scope_client_stub do
        # Create client
        client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_data_access_scope({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_data_access_scope name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_data_access_scope ::Google::Cloud::Chronicle::V1::DeleteDataAccessScopeRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_data_access_scope({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_data_access_scope(::Google::Cloud::Chronicle::V1::DeleteDataAccessScopeRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_data_access_scope_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Chronicle::V1::DataAccessControlService::Rest::Client::Configuration, config
  end
end
