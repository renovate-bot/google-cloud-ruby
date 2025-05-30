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

require "google/cloud/errors"
require "google/cloud/discoveryengine/v1/recommendation_service_pb"
require "google/cloud/location"

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module RecommendationService
          ##
          # Client for the RecommendationService service.
          #
          # Service for making recommendations.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "discoveryengine.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :recommendation_service_stub

            ##
            # Configure the RecommendationService Client class.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all RecommendationService clients
            #   ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "DiscoveryEngine", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 5.0
                default_config.retry_policy = {
                  initial_delay: 0.1, max_delay: 5.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the RecommendationService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client::Configuration}
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
              @recommendation_service_stub.universe_domain
            end

            ##
            # Create a new RecommendationService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the RecommendationService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/discoveryengine/v1/recommendation_service_services_pb"

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

              @recommendation_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @recommendation_service_stub.stub_logger&.info do |entry|
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
                config.endpoint = @recommendation_service_stub.endpoint
                config.universe_domain = @recommendation_service_stub.universe_domain
                config.logger = @recommendation_service_stub.logger if config.respond_to? :logger=
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
              @recommendation_service_stub.logger
            end

            # Service calls

            ##
            # Makes a recommendation, which requires a contextual user event.
            #
            # @overload recommend(request, options = nil)
            #   Pass arguments to `recommend` via a request object, either of type
            #   {::Google::Cloud::DiscoveryEngine::V1::RecommendRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DiscoveryEngine::V1::RecommendRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload recommend(serving_config: nil, user_event: nil, page_size: nil, filter: nil, validate_only: nil, params: nil, user_labels: nil)
            #   Pass arguments to `recommend` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param serving_config [::String]
            #     Required. Full resource name of a
            #     {::Google::Cloud::DiscoveryEngine::V1::ServingConfig ServingConfig}:
            #     `projects/*/locations/global/collections/*/engines/*/servingConfigs/*`, or
            #     `projects/*/locations/global/collections/*/dataStores/*/servingConfigs/*`
            #
            #     One default serving config is created along with your recommendation engine
            #     creation. The engine ID is used as the ID of the default serving
            #     config. For example, for Engine
            #     `projects/*/locations/global/collections/*/engines/my-engine`, you can use
            #     `projects/*/locations/global/collections/*/engines/my-engine/servingConfigs/my-engine`
            #     for your
            #     {::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client#recommend RecommendationService.Recommend}
            #     requests.
            #   @param user_event [::Google::Cloud::DiscoveryEngine::V1::UserEvent, ::Hash]
            #     Required. Context about the user, what they are looking at and what action
            #     they took to trigger the Recommend request. Note that this user event
            #     detail won't be ingested to userEvent logs. Thus, a separate userEvent
            #     write request is required for event logging.
            #
            #     Don't set
            #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
            #     or
            #     {::Google::Cloud::DiscoveryEngine::V1::UserInfo#user_id UserEvent.user_info.user_id}
            #     to the same fixed ID for different users. If you are trying to receive
            #     non-personalized recommendations (not recommended; this can negatively
            #     impact model performance), instead set
            #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
            #     to a random unique ID and leave
            #     {::Google::Cloud::DiscoveryEngine::V1::UserInfo#user_id UserEvent.user_info.user_id}
            #     unset.
            #   @param page_size [::Integer]
            #     Maximum number of results to return. Set this property
            #     to the number of recommendation results needed. If zero, the service
            #     chooses a reasonable default. The maximum allowed value is 100. Values
            #     above 100 are set to 100.
            #   @param filter [::String]
            #     Filter for restricting recommendation results with a length limit of 5,000
            #     characters. Currently, only filter expressions on the `filter_tags`
            #     attribute is supported.
            #
            #
            #     Examples:
            #
            #      * `(filter_tags: ANY("Red", "Blue") OR filter_tags: ANY("Hot", "Cold"))`
            #      * `(filter_tags: ANY("Red", "Blue")) AND NOT (filter_tags: ANY("Green"))`
            #
            #     If `attributeFilteringSyntax` is set to true under the `params` field, then
            #     attribute-based expressions are expected instead of the above described
            #     tag-based syntax. Examples:
            #
            #      * (language: ANY("en", "es")) AND NOT (categories: ANY("Movie"))
            #      * (available: true) AND
            #        (language: ANY("en", "es")) OR (categories: ANY("Movie"))
            #
            #     If your filter blocks all results, the API returns generic
            #     (unfiltered) popular Documents. If you only want results strictly matching
            #     the filters, set `strictFiltering` to `true` in
            #     {::Google::Cloud::DiscoveryEngine::V1::RecommendRequest#params RecommendRequest.params}
            #     to receive empty results instead.
            #
            #     Note that the API never returns
            #     {::Google::Cloud::DiscoveryEngine::V1::Document Document}s with `storageStatus`
            #     as `EXPIRED` or `DELETED` regardless of filter choices.
            #   @param validate_only [::Boolean]
            #     Use validate only mode for this recommendation query. If set to `true`, a
            #     fake model is used that returns arbitrary Document IDs.
            #     Note that the validate only mode should only be used for testing the API,
            #     or if the model is not ready.
            #   @param params [::Hash{::String => ::Google::Protobuf::Value, ::Hash}]
            #     Additional domain specific parameters for the recommendations.
            #
            #     Allowed values:
            #
            #     * `returnDocument`: Boolean. If set to `true`, the associated Document
            #        object is returned in
            #        {::Google::Cloud::DiscoveryEngine::V1::RecommendResponse::RecommendationResult#document RecommendResponse.RecommendationResult.document}.
            #     * `returnScore`: Boolean. If set to true, the recommendation score
            #        corresponding to each returned Document is set in
            #        {::Google::Cloud::DiscoveryEngine::V1::RecommendResponse::RecommendationResult#metadata RecommendResponse.RecommendationResult.metadata}.
            #        The given score indicates the probability of a Document conversion given
            #        the user's context and history.
            #     * `strictFiltering`: Boolean. True by default. If set to `false`, the
            #     service
            #        returns generic (unfiltered) popular Documents instead of empty if
            #        your filter blocks all recommendation results.
            #     * `diversityLevel`: String. Default empty. If set to be non-empty, then
            #        it needs to be one of:
            #         *  `no-diversity`
            #         *  `low-diversity`
            #         *  `medium-diversity`
            #         *  `high-diversity`
            #         *  `auto-diversity`
            #        This gives request-level control and adjusts recommendation results
            #        based on Document category.
            #     * `attributeFilteringSyntax`: Boolean. False by default. If set to true,
            #        the `filter` field is interpreted according to the new,
            #        attribute-based syntax.
            #   @param user_labels [::Hash{::String => ::String}]
            #     The user labels applied to a resource must meet the following requirements:
            #
            #     * Each resource can have multiple labels, up to a maximum of 64.
            #     * Each label must be a key-value pair.
            #     * Keys have a minimum length of 1 character and a maximum length of 63
            #       characters and cannot be empty. Values can be empty and have a maximum
            #       length of 63 characters.
            #     * Keys and values can contain only lowercase letters, numeric characters,
            #       underscores, and dashes. All characters must use UTF-8 encoding, and
            #       international characters are allowed.
            #     * The key portion of a label must be unique. However, you can use the same
            #       key with multiple resources.
            #     * Keys must start with a lowercase letter or international character.
            #
            #     See [Requirements for
            #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
            #     for more details.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::DiscoveryEngine::V1::RecommendResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::DiscoveryEngine::V1::RecommendResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/discovery_engine/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DiscoveryEngine::V1::RecommendRequest.new
            #
            #   # Call the recommend method.
            #   result = client.recommend request
            #
            #   # The returned object is of type Google::Cloud::DiscoveryEngine::V1::RecommendResponse.
            #   p result
            #
            def recommend request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1::RecommendRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.recommend.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DiscoveryEngine::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.serving_config
                header_params["serving_config"] = request.serving_config
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.recommend.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.recommend.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @recommendation_service_stub.call_rpc :recommend, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the RecommendationService API.
            #
            # This class represents the configuration for RecommendationService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # recommend to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.recommend.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::DiscoveryEngine::V1::RecommendationService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.recommend.timeout = 20.0
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
              DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Google::Auth::BaseClient, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC::Core::Channel
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
              # Configuration RPC class for the RecommendationService API.
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
                # RPC-specific configuration for `recommend`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :recommend

                # @private
                def initialize parent_rpcs = nil
                  recommend_config = parent_rpcs.recommend if parent_rpcs.respond_to? :recommend
                  @recommend = ::Gapic::Config::Method.new recommend_config

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
