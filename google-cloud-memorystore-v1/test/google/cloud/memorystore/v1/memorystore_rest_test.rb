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
require "gapic/rest"
require "google/cloud/memorystore/v1/memorystore_pb"
require "google/cloud/memorystore/v1/memorystore/rest"


class ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ClientTest < Minitest::Test
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

  def test_list_instances
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::ListInstancesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_instances_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_list_instances_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_instances_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_instances parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_instances ::Google::Cloud::Memorystore::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_instances(::Google::Cloud::Memorystore::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_instances_client_stub.call_count
      end
    end
  end

  def test_get_instance
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::Instance.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_get_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_instance({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_instance name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_instance ::Google::Cloud::Memorystore::V1::GetInstanceRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_instance({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_instance(::Google::Cloud::Memorystore::V1::GetInstanceRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_instance_client_stub.call_count
      end
    end
  end

  def test_create_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    instance_id = "hello world"
    instance = {}
    request_id = "hello world"

    create_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_create_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_instance parent: parent, instance_id: instance_id, instance: instance, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_instance ::Google::Cloud::Memorystore::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_instance({ parent: parent, instance_id: instance_id, instance: instance, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_instance(::Google::Cloud::Memorystore::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_instance_client_stub.call_count
      end
    end
  end

  def test_update_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    instance = {}
    request_id = "hello world"

    update_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_update_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_instance({ update_mask: update_mask, instance: instance, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_instance update_mask: update_mask, instance: instance, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_instance ::Google::Cloud::Memorystore::V1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_instance({ update_mask: update_mask, instance: instance, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_instance(::Google::Cloud::Memorystore::V1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_instance_client_stub.call_count
      end
    end
  end

  def test_delete_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_delete_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_instance({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_instance name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_instance ::Google::Cloud::Memorystore::V1::DeleteInstanceRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_instance({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_instance(::Google::Cloud::Memorystore::V1::DeleteInstanceRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_instance_client_stub.call_count
      end
    end
  end

  def test_get_certificate_authority
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::CertificateAuthority.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_certificate_authority_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_get_certificate_authority_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_certificate_authority_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_certificate_authority({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_certificate_authority name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_certificate_authority ::Google::Cloud::Memorystore::V1::GetCertificateAuthorityRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_certificate_authority({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_certificate_authority(::Google::Cloud::Memorystore::V1::GetCertificateAuthorityRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_certificate_authority_client_stub.call_count
      end
    end
  end

  def test_reschedule_maintenance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reschedule_type = :RESCHEDULE_TYPE_UNSPECIFIED
    schedule_time = {}

    reschedule_maintenance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_reschedule_maintenance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, reschedule_maintenance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.reschedule_maintenance({ name: name, reschedule_type: reschedule_type, schedule_time: schedule_time }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.reschedule_maintenance name: name, reschedule_type: reschedule_type, schedule_time: schedule_time do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.reschedule_maintenance ::Google::Cloud::Memorystore::V1::RescheduleMaintenanceRequest.new(name: name, reschedule_type: reschedule_type, schedule_time: schedule_time) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.reschedule_maintenance({ name: name, reschedule_type: reschedule_type, schedule_time: schedule_time }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.reschedule_maintenance(::Google::Cloud::Memorystore::V1::RescheduleMaintenanceRequest.new(name: name, reschedule_type: reschedule_type, schedule_time: schedule_time), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, reschedule_maintenance_client_stub.call_count
      end
    end
  end

  def test_list_backup_collections
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::ListBackupCollectionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_backup_collections_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_list_backup_collections_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_backup_collections_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_backup_collections({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_backup_collections parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_backup_collections ::Google::Cloud::Memorystore::V1::ListBackupCollectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_backup_collections({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_backup_collections(::Google::Cloud::Memorystore::V1::ListBackupCollectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_backup_collections_client_stub.call_count
      end
    end
  end

  def test_get_backup_collection
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::BackupCollection.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_backup_collection_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_get_backup_collection_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_backup_collection_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_backup_collection({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_backup_collection name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_backup_collection ::Google::Cloud::Memorystore::V1::GetBackupCollectionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_backup_collection({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_backup_collection(::Google::Cloud::Memorystore::V1::GetBackupCollectionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_backup_collection_client_stub.call_count
      end
    end
  end

  def test_list_backups
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::ListBackupsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_backups_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_list_backups_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_backups_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_backups({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_backups parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_backups ::Google::Cloud::Memorystore::V1::ListBackupsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_backups({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_backups(::Google::Cloud::Memorystore::V1::ListBackupsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_backups_client_stub.call_count
      end
    end
  end

  def test_get_backup
    # Create test objects.
    client_result = ::Google::Cloud::Memorystore::V1::Backup.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_get_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_backup({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_backup name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_backup ::Google::Cloud::Memorystore::V1::GetBackupRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_backup({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_backup(::Google::Cloud::Memorystore::V1::GetBackupRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_backup_client_stub.call_count
      end
    end
  end

  def test_delete_backup
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_delete_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_backup({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_backup name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_backup ::Google::Cloud::Memorystore::V1::DeleteBackupRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_backup({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_backup(::Google::Cloud::Memorystore::V1::DeleteBackupRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_backup_client_stub.call_count
      end
    end
  end

  def test_export_backup
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    gcs_bucket = "hello world"
    name = "hello world"

    export_backup_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_export_backup_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, export_backup_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.export_backup({ gcs_bucket: gcs_bucket, name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.export_backup gcs_bucket: gcs_bucket, name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.export_backup ::Google::Cloud::Memorystore::V1::ExportBackupRequest.new(gcs_bucket: gcs_bucket, name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.export_backup({ gcs_bucket: gcs_bucket, name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.export_backup(::Google::Cloud::Memorystore::V1::ExportBackupRequest.new(gcs_bucket: gcs_bucket, name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, export_backup_client_stub.call_count
      end
    end
  end

  def test_backup_instance
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    ttl = {}
    backup_id = "hello world"

    backup_instance_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Memorystore::V1::Memorystore::Rest::ServiceStub.stub :transcode_backup_instance_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, backup_instance_client_stub do
        # Create client
        client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.backup_instance({ name: name, ttl: ttl, backup_id: backup_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.backup_instance name: name, ttl: ttl, backup_id: backup_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.backup_instance ::Google::Cloud::Memorystore::V1::BackupInstanceRequest.new(name: name, ttl: ttl, backup_id: backup_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.backup_instance({ name: name, ttl: ttl, backup_id: backup_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.backup_instance(::Google::Cloud::Memorystore::V1::BackupInstanceRequest.new(name: name, ttl: ttl, backup_id: backup_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, backup_instance_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Memorystore::V1::Memorystore::Rest::Client::Configuration, config
  end
end
