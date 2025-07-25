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
require "google/cloud/policysimulator/v1/orgpolicy_pb"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/rest"


class ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::ClientTest < Minitest::Test
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

  def test_list_org_policy_violations_previews
    # Create test objects.
    client_result = ::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsPreviewsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_org_policy_violations_previews_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::ServiceStub.stub :transcode_list_org_policy_violations_previews_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_org_policy_violations_previews_client_stub do
        # Create client
        client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_org_policy_violations_previews({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_org_policy_violations_previews parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_org_policy_violations_previews ::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsPreviewsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_org_policy_violations_previews({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_org_policy_violations_previews(::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsPreviewsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_org_policy_violations_previews_client_stub.call_count
      end
    end
  end

  def test_get_org_policy_violations_preview
    # Create test objects.
    client_result = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_org_policy_violations_preview_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::ServiceStub.stub :transcode_get_org_policy_violations_preview_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_org_policy_violations_preview_client_stub do
        # Create client
        client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_org_policy_violations_preview({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_org_policy_violations_preview name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_org_policy_violations_preview ::Google::Cloud::PolicySimulator::V1::GetOrgPolicyViolationsPreviewRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_org_policy_violations_preview({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_org_policy_violations_preview(::Google::Cloud::PolicySimulator::V1::GetOrgPolicyViolationsPreviewRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_org_policy_violations_preview_client_stub.call_count
      end
    end
  end

  def test_create_org_policy_violations_preview
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    org_policy_violations_preview = {}
    org_policy_violations_preview_id = "hello world"

    create_org_policy_violations_preview_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::ServiceStub.stub :transcode_create_org_policy_violations_preview_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_org_policy_violations_preview_client_stub do
        # Create client
        client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_org_policy_violations_preview({ parent: parent, org_policy_violations_preview: org_policy_violations_preview, org_policy_violations_preview_id: org_policy_violations_preview_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_org_policy_violations_preview parent: parent, org_policy_violations_preview: org_policy_violations_preview, org_policy_violations_preview_id: org_policy_violations_preview_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_org_policy_violations_preview ::Google::Cloud::PolicySimulator::V1::CreateOrgPolicyViolationsPreviewRequest.new(parent: parent, org_policy_violations_preview: org_policy_violations_preview, org_policy_violations_preview_id: org_policy_violations_preview_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_org_policy_violations_preview({ parent: parent, org_policy_violations_preview: org_policy_violations_preview, org_policy_violations_preview_id: org_policy_violations_preview_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_org_policy_violations_preview(::Google::Cloud::PolicySimulator::V1::CreateOrgPolicyViolationsPreviewRequest.new(parent: parent, org_policy_violations_preview: org_policy_violations_preview, org_policy_violations_preview_id: org_policy_violations_preview_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_org_policy_violations_preview_client_stub.call_count
      end
    end
  end

  def test_list_org_policy_violations
    # Create test objects.
    client_result = ::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_org_policy_violations_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::ServiceStub.stub :transcode_list_org_policy_violations_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_org_policy_violations_client_stub do
        # Create client
        client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_org_policy_violations({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_org_policy_violations parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_org_policy_violations ::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_org_policy_violations({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_org_policy_violations(::Google::Cloud::PolicySimulator::V1::ListOrgPolicyViolationsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_org_policy_violations_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client::Configuration, config
  end
end
