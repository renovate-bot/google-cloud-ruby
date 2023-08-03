# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/batch/v1/batch_pb"
require "google/cloud/batch/v1/batch_services_pb"
require "google/cloud/batch/v1/batch_service"

class ::Google::Cloud::Batch::V1::BatchService::ClientTest < Minitest::Test
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

  def test_create_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Batch::V1::Job.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    job_id = "hello world"
    job = {}
    request_id = "hello world"

    create_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_job, name
      assert_kind_of ::Google::Cloud::Batch::V1::CreateJobRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["job_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Batch::V1::Job), request["job"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_job_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_job({ parent: parent, job_id: job_id, job: job, request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_job parent: parent, job_id: job_id, job: job, request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_job ::Google::Cloud::Batch::V1::CreateJobRequest.new(parent: parent, job_id: job_id, job: job, request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_job({ parent: parent, job_id: job_id, job: job, request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_job(::Google::Cloud::Batch::V1::CreateJobRequest.new(parent: parent, job_id: job_id, job: job, request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_job_client_stub.call_rpc_count
    end
  end

  def test_get_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Batch::V1::Job.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_job, name
      assert_kind_of ::Google::Cloud::Batch::V1::GetJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_job_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_job ::Google::Cloud::Batch::V1::GetJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_job(::Google::Cloud::Batch::V1::GetJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_job_client_stub.call_rpc_count
    end
  end

  def test_delete_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reason = "hello world"
    request_id = "hello world"

    delete_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_job, name
      assert_kind_of ::Google::Cloud::Batch::V1::DeleteJobRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["reason"]
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_job_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_job({ name: name, reason: reason, request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_job name: name, reason: reason, request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_job ::Google::Cloud::Batch::V1::DeleteJobRequest.new(name: name, reason: reason, request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_job({ name: name, reason: reason, request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_job(::Google::Cloud::Batch::V1::DeleteJobRequest.new(name: name, reason: reason, request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_job_client_stub.call_rpc_count
    end
  end

  def test_list_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Batch::V1::ListJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    order_by = "hello world"
    page_size = 42
    page_token = "hello world"

    list_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_jobs, name
      assert_kind_of ::Google::Cloud::Batch::V1::ListJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_jobs({ parent: parent, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_jobs parent: parent, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_jobs ::Google::Cloud::Batch::V1::ListJobsRequest.new(parent: parent, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_jobs({ parent: parent, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_jobs(::Google::Cloud::Batch::V1::ListJobsRequest.new(parent: parent, filter: filter, order_by: order_by, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_jobs_client_stub.call_rpc_count
    end
  end

  def test_get_task
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Batch::V1::Task.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_task_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_task, name
      assert_kind_of ::Google::Cloud::Batch::V1::GetTaskRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_task_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_task({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_task name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_task ::Google::Cloud::Batch::V1::GetTaskRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_task({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_task(::Google::Cloud::Batch::V1::GetTaskRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_task_client_stub.call_rpc_count
    end
  end

  def test_list_tasks
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Batch::V1::ListTasksResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_tasks_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tasks, name
      assert_kind_of ::Google::Cloud::Batch::V1::ListTasksRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tasks_client_stub do
      # Create client
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tasks({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tasks parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tasks ::Google::Cloud::Batch::V1::ListTasksRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tasks({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tasks(::Google::Cloud::Batch::V1::ListTasksRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tasks_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Batch::V1::BatchService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Batch::V1::BatchService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Batch::V1::BatchService::Operations, client.operations_client
  end
end
