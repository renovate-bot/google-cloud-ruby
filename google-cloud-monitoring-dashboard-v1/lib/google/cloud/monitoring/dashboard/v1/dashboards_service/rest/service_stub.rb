# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/monitoring/dashboard/v1/dashboards_service_pb"

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          module DashboardsService
            module Rest
              ##
              # REST service stub for the DashboardsService service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                # @private
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               service_name: self.class,
                                                               raise_faraday_errors: false,
                                                               logger: logger
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # The logger used for request/response debug logging.
                #
                # @return [Logger]
                #
                def logger stub: false
                  stub ? @client_stub.stub_logger : @client_stub.logger
                end

                ##
                # Baseline implementation for the create_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::CreateDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                #   A result object deserialized from the server's reply
                def create_dashboard request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_dashboard_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "create_dashboard",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Monitoring::Dashboard::V1::Dashboard.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_dashboards REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::ListDashboardsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Monitoring::Dashboard::V1::ListDashboardsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Monitoring::Dashboard::V1::ListDashboardsResponse]
                #   A result object deserialized from the server's reply
                def list_dashboards request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_dashboards_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "list_dashboards",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Monitoring::Dashboard::V1::ListDashboardsResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the get_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::GetDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                #   A result object deserialized from the server's reply
                def get_dashboard request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_dashboard_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "get_dashboard",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Monitoring::Dashboard::V1::Dashboard.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the delete_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::DeleteDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Protobuf::Empty]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Protobuf::Empty]
                #   A result object deserialized from the server's reply
                def delete_dashboard request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_dashboard_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "delete_dashboard",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the update_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::UpdateDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Monitoring::Dashboard::V1::Dashboard]
                #   A result object deserialized from the server's reply
                def update_dashboard request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_dashboard_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "update_dashboard",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Monitoring::Dashboard::V1::Dashboard.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::CreateDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_dashboard_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/dashboards",
                                                            body: "dashboard",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_dashboards REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::ListDashboardsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_dashboards_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/dashboards",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::GetDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_dashboard_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/dashboards/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::DeleteDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_dashboard_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/dashboards/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_dashboard REST call
                #
                # @param request_pb [::Google::Cloud::Monitoring::Dashboard::V1::UpdateDashboardRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_dashboard_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/v1/{dashboard.name}",
                                                            body: "dashboard",
                                                            matches: [
                                                              ["dashboard.name", %r{^projects/[^/]+/dashboards/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
