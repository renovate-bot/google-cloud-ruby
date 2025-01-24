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

require "google/cloud/errors"
require "google/cloud/dialogflow/v2/answer_record_pb"
require "google/cloud/location"

module Google
  module Cloud
    module Dialogflow
      module V2
        module AnswerRecords
          ##
          # Client for the AnswerRecords service.
          #
          # Service for managing
          # {::Google::Cloud::Dialogflow::V2::AnswerRecord AnswerRecords}.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "dialogflow.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :answer_records_stub

            ##
            # Configure the AnswerRecords Client class.
            #
            # See {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all AnswerRecords clients
            #   ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.configure do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Dialogflow", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 60.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the AnswerRecords Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # The effective universe domain
            #
            # @return [String]
            #
            def universe_domain
              @answer_records_stub.universe_domain
            end

            ##
            # Create a new AnswerRecords client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the AnswerRecords client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/dialogflow/v2/answer_record_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint.nil? ||
                                       (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                       !@config.endpoint.split(".").first.include?("-"))
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @answer_records_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Dialogflow::V2::AnswerRecords::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @answer_records_stub.stub_logger&.info do |entry|
                entry.set_system_name
                entry.set_service
                entry.message = "Created client for #{entry.service}"
                entry.set_credentials_fields credentials
                entry.set "customEndpoint", @config.endpoint if @config.endpoint
                entry.set "defaultTimeout", @config.timeout if @config.timeout
                entry.set "quotaProject", @quota_project_id if @quota_project_id
              end

              @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @answer_records_stub.endpoint
                config.universe_domain = @answer_records_stub.universe_domain
                config.logger = @answer_records_stub.logger if config.respond_to? :logger=
              end
            end

            ##
            # Get the associated client for mix-in of the Locations.
            #
            # @return [Google::Cloud::Location::Locations::Client]
            #
            attr_reader :location_client

            ##
            # The logger used for request/response debug logging.
            #
            # @return [Logger]
            #
            def logger
              @answer_records_stub.logger
            end

            # Service calls

            ##
            # Returns the list of all answer records in the specified project in reverse
            # chronological order.
            #
            # @overload list_answer_records(request, options = nil)
            #   Pass arguments to `list_answer_records` via a request object, either of type
            #   {::Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_answer_records(parent: nil, filter: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_answer_records` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The project to list all answer records for in reverse
            #     chronological order. Format: `projects/<Project ID>/locations/<Location
            #     ID>`.
            #   @param filter [::String]
            #     Optional. Filters to restrict results to specific answer records.
            #
            #     Marked deprecated as it hasn't been, and isn't currently, supported.
            #
            #     For more information about filtering, see
            #     [API Filtering](https://aip.dev/160).
            #   @param page_size [::Integer]
            #     Optional. The maximum number of records to return in a single page.
            #     The server may return fewer records than this. If unspecified, we use 10.
            #     The maximum is 100.
            #   @param page_token [::String]
            #     Optional. The
            #     {::Google::Cloud::Dialogflow::V2::ListAnswerRecordsResponse#next_page_token ListAnswerRecordsResponse.next_page_token}
            #     value returned from a previous list request used to continue listing on
            #     the next page.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Dialogflow::V2::AnswerRecord>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::Dialogflow::V2::AnswerRecord>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dialogflow/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest.new
            #
            #   # Call the list_answer_records method.
            #   result = client.list_answer_records request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::Dialogflow::V2::AnswerRecord.
            #     p item
            #   end
            #
            def list_answer_records request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::V2::ListAnswerRecordsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_answer_records.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dialogflow::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_answer_records.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_answer_records.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @answer_records_stub.call_rpc :list_answer_records, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @answer_records_stub, :list_answer_records, request, response, operation, options
                yield response, operation if block_given?
                throw :response, response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates the specified answer record.
            #
            # @overload update_answer_record(request, options = nil)
            #   Pass arguments to `update_answer_record` via a request object, either of type
            #   {::Google::Cloud::Dialogflow::V2::UpdateAnswerRecordRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Dialogflow::V2::UpdateAnswerRecordRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_answer_record(answer_record: nil, update_mask: nil)
            #   Pass arguments to `update_answer_record` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param answer_record [::Google::Cloud::Dialogflow::V2::AnswerRecord, ::Hash]
            #     Required. Answer record to update.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Required. The mask to control which fields get updated.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Dialogflow::V2::AnswerRecord]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Dialogflow::V2::AnswerRecord]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dialogflow/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Dialogflow::V2::UpdateAnswerRecordRequest.new
            #
            #   # Call the update_answer_record method.
            #   result = client.update_answer_record request
            #
            #   # The returned object is of type Google::Cloud::Dialogflow::V2::AnswerRecord.
            #   p result
            #
            def update_answer_record request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::V2::UpdateAnswerRecordRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_answer_record.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Dialogflow::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.answer_record&.name
                header_params["answer_record.name"] = request.answer_record.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_answer_record.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_answer_record.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @answer_records_stub.call_rpc :update_answer_record, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the AnswerRecords API.
            #
            # This class represents the configuration for AnswerRecords,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Dialogflow::V2::AnswerRecords::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # list_answer_records to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_answer_records.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.list_answer_records.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   A custom service endpoint, as a hostname or hostname:port. The default is
            #   nil, indicating to use the default endpoint in the current universe domain.
            #   @return [::String,nil]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #
            #   Warning: If you accept a credential configuration (JSON file or Hash) from an
            #   external source for authentication to Google Cloud, you must validate it before
            #   providing it to a Google API client library. Providing an unvalidated credential
            #   configuration to Google APIs can compromise the security of your systems and data.
            #   For more information, refer to [Validate credential configurations from external
            #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            # @!attribute [rw] universe_domain
            #   The universe domain within which to make requests. This determines the
            #   default endpoint URL. The default value of nil uses the environment
            #   universe (usually the default "googleapis.com" universe).
            #   @return [::String,nil]
            # @!attribute [rw] logger
            #   A custom logger to use for request/response debug logging, or the value
            #   `:default` (the default) to construct a default logger, or `nil` to
            #   explicitly disable logging.
            #   @return [::Logger,:default,nil]
            #
            class Configuration
              extend ::Gapic::Config

              # @private
              # The endpoint specific to the default "googleapis.com" universe. Deprecated.
              DEFAULT_ENDPOINT = "dialogflow.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil
              config_attr :universe_domain, nil, ::String, nil
              config_attr :logger, :default, ::Logger, nil, :default

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the AnswerRecords API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `list_answer_records`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_answer_records
                ##
                # RPC-specific configuration for `update_answer_record`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :update_answer_record

                # @private
                def initialize parent_rpcs = nil
                  list_answer_records_config = parent_rpcs.list_answer_records if parent_rpcs.respond_to? :list_answer_records
                  @list_answer_records = ::Gapic::Config::Method.new list_answer_records_config
                  update_answer_record_config = parent_rpcs.update_answer_record if parent_rpcs.respond_to? :update_answer_record
                  @update_answer_record = ::Gapic::Config::Method.new update_answer_record_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end
