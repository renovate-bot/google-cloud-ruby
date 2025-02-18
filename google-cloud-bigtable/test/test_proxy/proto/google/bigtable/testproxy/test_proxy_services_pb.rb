# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/bigtable/testproxy/test_proxy.proto for package 'google.bigtable.testproxy'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/bigtable/testproxy/test_proxy_pb'

module Google
  module Bigtable
    module Testproxy
      module CloudBigtableV2TestProxy
        # Note that all RPCs are unary, even when the equivalent client binding call
        # may be streaming. This is an intentional simplification.
        #
        # Most methods have sync (default) and async variants. For async variants,
        # the proxy is expected to perform the async operation, then wait for results
        # before delivering them back to the driver client.
        #
        # Operations that may have interesting concurrency characteristics are
        # represented explicitly in the API (see ReadRowsRequest.cancel_after_rows).
        # We include such operations only when they can be meaningfully performed
        # through client bindings.
        #
        # Users should generally avoid setting deadlines for requests to the Proxy
        # because operations are not cancelable. If the deadline is set anyway, please
        # understand that the underlying operation will continue to be executed even
        # after the deadline expires.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.bigtable.testproxy.CloudBigtableV2TestProxy'

          # Client management:
          #
          # Creates a client in the proxy.
          # Each client has its own dedicated channel(s), and can be used concurrently
          # and independently with other clients.
          rpc :CreateClient, ::Google::Bigtable::Testproxy::CreateClientRequest, ::Google::Bigtable::Testproxy::CreateClientResponse
          # Closes a client in the proxy, making it not accept new requests.
          rpc :CloseClient, ::Google::Bigtable::Testproxy::CloseClientRequest, ::Google::Bigtable::Testproxy::CloseClientResponse
          # Removes a client in the proxy, making it inaccessible. Client closing
          # should be done by CloseClient() separately.
          rpc :RemoveClient, ::Google::Bigtable::Testproxy::RemoveClientRequest, ::Google::Bigtable::Testproxy::RemoveClientResponse
          # Bigtable operations: for each operation, you should use the synchronous or
          # asynchronous variant of the client method based on the `use_async_method`
          # setting of the client instance. For starters, you can choose to implement
          # one variant, and return UNIMPLEMENTED status for the other.
          #
          # Reads a row with the client instance.
          # The result row may not be present in the response.
          # Callers should check for it (e.g. calling has_row() in C++).
          rpc :ReadRow, ::Google::Bigtable::Testproxy::ReadRowRequest, ::Google::Bigtable::Testproxy::RowResult
          # Reads rows with the client instance.
          rpc :ReadRows, ::Google::Bigtable::Testproxy::ReadRowsRequest, ::Google::Bigtable::Testproxy::RowsResult
          # Writes a row with the client instance.
          rpc :MutateRow, ::Google::Bigtable::Testproxy::MutateRowRequest, ::Google::Bigtable::Testproxy::MutateRowResult
          # Writes multiple rows with the client instance.
          rpc :BulkMutateRows, ::Google::Bigtable::Testproxy::MutateRowsRequest, ::Google::Bigtable::Testproxy::MutateRowsResult
          # Performs a check-and-mutate-row operation with the client instance.
          rpc :CheckAndMutateRow, ::Google::Bigtable::Testproxy::CheckAndMutateRowRequest, ::Google::Bigtable::Testproxy::CheckAndMutateRowResult
          # Obtains a row key sampling with the client instance.
          rpc :SampleRowKeys, ::Google::Bigtable::Testproxy::SampleRowKeysRequest, ::Google::Bigtable::Testproxy::SampleRowKeysResult
          # Performs a read-modify-write operation with the client.
          rpc :ReadModifyWriteRow, ::Google::Bigtable::Testproxy::ReadModifyWriteRowRequest, ::Google::Bigtable::Testproxy::RowResult
          # Executes a BTQL query with the client.
          rpc :ExecuteQuery, ::Google::Bigtable::Testproxy::ExecuteQueryRequest, ::Google::Bigtable::Testproxy::ExecuteQueryResult
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
