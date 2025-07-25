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

require "google/cloud/errors"
require "google/cloud/eventarc/publishing/v1/publisher_pb"
require "google/cloud/eventarc/publishing/v1/publisher/rest/service_stub"

module Google
  module Cloud
    module Eventarc
      module Publishing
        module V1
          module Publisher
            module Rest
              ##
              # REST client for the Publisher service.
              #
              # Eventarc processes events generated by an event provider and delivers them to
              # a subscriber.
              #
              # An event provider is a software-as-a-service (SaaS) system or
              # product that can generate and deliver events through Eventarc.
              #
              # A third-party event provider is an event provider from outside of Google.
              #
              # A partner is a third-party event provider that is integrated with Eventarc.
              #
              # A subscriber is a Google Cloud customer interested in receiving events.
              #
              # Channel is a first-class Eventarc resource that is created and managed
              # by the subscriber in their Google Cloud project. A Channel represents a
              # subscriber's intent to receive events from an event provider. A Channel is
              # associated with exactly one event provider.
              #
              # ChannelConnection is a first-class Eventarc resource that
              # is created and managed by the partner in their Google Cloud project. A
              # ChannelConnection represents a connection between a partner and a
              # subscriber's Channel. A ChannelConnection has a one-to-one mapping with a
              # Channel.
              #
              # Bus is a first-class Eventarc resource that is created and managed in a
              # Google Cloud project. A Bus provides a discoverable endpoint for events and
              # is a router that receives all events published by event providers and
              # delivers them to zero or more subscribers.
              #
              # Publisher allows an event provider to publish events to Eventarc.
              #
              class Client
                # @private
                API_VERSION = ""

                # @private
                DEFAULT_ENDPOINT_TEMPLATE = "eventarcpublishing.$UNIVERSE_DOMAIN$"

                # @private
                attr_reader :publisher_stub

                ##
                # Configure the Publisher Client class.
                #
                # See {::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @example
                #
                #   # Modify the configuration for all Publisher clients
                #   ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.configure do |config|
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
                    namespace = ["Google", "Cloud", "Eventarc", "Publishing", "V1"]
                    parent_config = while namespace.any?
                                      parent_name = namespace.join "::"
                                      parent_const = const_get parent_name
                                      break parent_const.configure if parent_const.respond_to? :configure
                                      namespace.pop
                                    end
                    default_config = Client::Configuration.new parent_config

                    default_config.rpcs.publish_channel_connection_events.timeout = 60.0

                    default_config.rpcs.publish.timeout = 60.0

                    default_config
                  end
                  yield @configure if block_given?
                  @configure
                end

                ##
                # Configure the Publisher Client instance.
                #
                # The configuration is set to the derived mode, meaning that values can be changed,
                # but structural changes (adding new fields, etc.) are not allowed. Structural changes
                # should be made on {Client.configure}.
                #
                # See {::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client::Configuration}
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
                  @publisher_stub.universe_domain
                end

                ##
                # Create a new Publisher REST client object.
                #
                # @example
                #
                #   # Create a client using the default configuration
                #   client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new
                #
                #   # Create a client using a custom configuration
                #   client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the Publisher client.
                # @yieldparam config [Client::Configuration]
                #
                def initialize
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

                  @publisher_stub = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::ServiceStub.new(
                    endpoint: @config.endpoint,
                    endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                    universe_domain: @config.universe_domain,
                    credentials: credentials,
                    logger: @config.logger
                  )

                  @publisher_stub.logger(stub: true)&.info do |entry|
                    entry.set_system_name
                    entry.set_service
                    entry.message = "Created client for #{entry.service}"
                    entry.set_credentials_fields credentials
                    entry.set "customEndpoint", @config.endpoint if @config.endpoint
                    entry.set "defaultTimeout", @config.timeout if @config.timeout
                    entry.set "quotaProject", @quota_project_id if @quota_project_id
                  end
                end

                ##
                # The logger used for request/response debug logging.
                #
                # @return [Logger]
                #
                def logger
                  @publisher_stub.logger
                end

                # Service calls

                ##
                # Publish events to a ChannelConnection in a partner's project.
                #
                # @overload publish_channel_connection_events(request, options = nil)
                #   Pass arguments to `publish_channel_connection_events` via a request object, either of type
                #   {::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload publish_channel_connection_events(channel_connection: nil, events: nil, text_events: nil)
                #   Pass arguments to `publish_channel_connection_events` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param channel_connection [::String]
                #     The channel_connection that the events are published from. For example:
                #     `projects/{partner_project_id}/locations/{location}/channelConnections/{channel_connection_id}`.
                #   @param events [::Array<::Google::Protobuf::Any, ::Hash>]
                #     The CloudEvents v1.0 events to publish. No other types are allowed.
                #     If this field is set, then the `text_events` fields must not be set.
                #   @param text_events [::Array<::String>]
                #     The text representation of events to publish.
                #     CloudEvent v1.0 in JSON format is the only allowed type. Refer to
                #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/json-format.md
                #     for specification.
                #     If this field is set, then the `events` fields must not be set.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsResponse]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                #
                # @example Basic example
                #   require "google/cloud/eventarc/publishing/v1"
                #
                #   # Create a client object. The client can be reused for multiple calls.
                #   client = Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new
                #
                #   # Create a request. To set request fields, pass in keyword arguments.
                #   request = Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest.new
                #
                #   # Call the publish_channel_connection_events method.
                #   result = client.publish_channel_connection_events request
                #
                #   # The returned object is of type Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsResponse.
                #   p result
                #
                def publish_channel_connection_events request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Eventarc::Publishing::V1::PublishChannelConnectionEventsRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.publish_channel_connection_events.metadata.to_h

                  # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Eventarc::Publishing::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.publish_channel_connection_events.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.publish_channel_connection_events.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @publisher_stub.publish_channel_connection_events request, options do |result, operation|
                    yield result, operation if block_given?
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Publish events to a subscriber's channel.
                #
                # @overload publish_events(request, options = nil)
                #   Pass arguments to `publish_events` via a request object, either of type
                #   {::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload publish_events(channel: nil, events: nil, text_events: nil)
                #   Pass arguments to `publish_events` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param channel [::String]
                #     The full name of the channel to publish to. For example:
                #     `projects/{project}/locations/{location}/channels/{channel-id}`.
                #   @param events [::Array<::Google::Protobuf::Any, ::Hash>]
                #     The CloudEvents v1.0 events to publish. No other types are allowed.
                #     If this field is set, then the `text_events` fields must not be set.
                #   @param text_events [::Array<::String>]
                #     The text representation of events to publish.
                #     CloudEvent v1.0 in JSON format is the only allowed type. Refer to
                #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/json-format.md
                #     for specification.
                #     If this field is set, then the `events` fields must not be set.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Eventarc::Publishing::V1::PublishEventsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Eventarc::Publishing::V1::PublishEventsResponse]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                #
                # @example Basic example
                #   require "google/cloud/eventarc/publishing/v1"
                #
                #   # Create a client object. The client can be reused for multiple calls.
                #   client = Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new
                #
                #   # Create a request. To set request fields, pass in keyword arguments.
                #   request = Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest.new
                #
                #   # Call the publish_events method.
                #   result = client.publish_events request
                #
                #   # The returned object is of type Google::Cloud::Eventarc::Publishing::V1::PublishEventsResponse.
                #   p result
                #
                def publish_events request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Eventarc::Publishing::V1::PublishEventsRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.publish_events.metadata.to_h

                  # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Eventarc::Publishing::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.publish_events.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.publish_events.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @publisher_stub.publish_events request, options do |result, operation|
                    yield result, operation if block_given?
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Publish events to a message bus.
                #
                # @overload publish(request, options = nil)
                #   Pass arguments to `publish` via a request object, either of type
                #   {::Google::Cloud::Eventarc::Publishing::V1::PublishRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Eventarc::Publishing::V1::PublishRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload publish(message_bus: nil, proto_message: nil, json_message: nil, avro_message: nil)
                #   Pass arguments to `publish` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param message_bus [::String]
                #     Required. The full name of the message bus to publish events to. Format:
                #     `projects/{project}/locations/{location}/messageBuses/{messageBus}`.
                #   @param proto_message [::Google::Cloud::Eventarc::Publishing::V1::CloudEvent, ::Hash]
                #     The Protobuf format of the CloudEvent being published. Specification can
                #     be found here:
                #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/protobuf-format.md
                #
                #     Note: The following parameters are mutually exclusive: `proto_message`, `json_message`, `avro_message`. At most one of these parameters can be set. If more than one is set, only one will be used, and it is not defined which one.
                #   @param json_message [::String]
                #     The JSON format of the CloudEvent being published. Specification can be
                #     found here:
                #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/json-format.md
                #
                #     Note: The following parameters are mutually exclusive: `json_message`, `proto_message`, `avro_message`. At most one of these parameters can be set. If more than one is set, only one will be used, and it is not defined which one.
                #   @param avro_message [::String]
                #     The Avro format of the CloudEvent being published. Specification can
                #     be found here:
                #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/avro-format.md
                #
                #     Note: The following parameters are mutually exclusive: `avro_message`, `proto_message`, `json_message`. At most one of these parameters can be set. If more than one is set, only one will be used, and it is not defined which one.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Eventarc::Publishing::V1::PublishResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Eventarc::Publishing::V1::PublishResponse]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                #
                # @example Basic example
                #   require "google/cloud/eventarc/publishing/v1"
                #
                #   # Create a client object. The client can be reused for multiple calls.
                #   client = Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new
                #
                #   # Create a request. To set request fields, pass in keyword arguments.
                #   request = Google::Cloud::Eventarc::Publishing::V1::PublishRequest.new
                #
                #   # Call the publish method.
                #   result = client.publish request
                #
                #   # The returned object is of type Google::Cloud::Eventarc::Publishing::V1::PublishResponse.
                #   p result
                #
                def publish request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Eventarc::Publishing::V1::PublishRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.publish.metadata.to_h

                  # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Eventarc::Publishing::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.publish.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.publish.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @publisher_stub.publish request, options do |result, operation|
                    yield result, operation if block_given?
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Configuration class for the Publisher REST API.
                #
                # This class represents the configuration for Publisher REST,
                # providing control over timeouts, retry behavior, logging, transport
                # parameters, and other low-level controls. Certain parameters can also be
                # applied individually to specific RPCs. See
                # {::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client::Configuration::Rpcs}
                # for a list of RPCs that can be configured independently.
                #
                # Configuration can be applied globally to all clients, or to a single client
                # on construction.
                #
                # @example
                #
                #   # Modify the global config, setting the timeout for
                #   # publish_channel_connection_events to 20 seconds,
                #   # and all remaining timeouts to 10 seconds.
                #   ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.configure do |config|
                #     config.timeout = 10.0
                #     config.rpcs.publish_channel_connection_events.timeout = 20.0
                #   end
                #
                #   # Apply the above configuration only to a new client.
                #   client = ::Google::Cloud::Eventarc::Publishing::V1::Publisher::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #     config.rpcs.publish_channel_connection_events.timeout = 20.0
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
                # @!attribute [rw] timeout
                #   The call timeout in seconds.
                #   @return [::Numeric]
                # @!attribute [rw] metadata
                #   Additional headers to be sent with the call.
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
                  DEFAULT_ENDPOINT = "eventarcpublishing.googleapis.com"

                  config_attr :endpoint,      nil, ::String, nil
                  config_attr :credentials,   nil do |value|
                    allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Google::Auth::BaseClient, ::Signet::OAuth2::Client, nil]
                    allowed.any? { |klass| klass === value }
                  end
                  config_attr :scope,         nil, ::String, ::Array, nil
                  config_attr :lib_name,      nil, ::String, nil
                  config_attr :lib_version,   nil, ::String, nil
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
                  # Configuration RPC class for the Publisher API.
                  #
                  # Includes fields providing the configuration for each RPC in this service.
                  # Each configuration object is of type `Gapic::Config::Method` and includes
                  # the following configuration fields:
                  #
                  #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                  #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
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
                    # RPC-specific configuration for `publish_channel_connection_events`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :publish_channel_connection_events
                    ##
                    # RPC-specific configuration for `publish_events`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :publish_events
                    ##
                    # RPC-specific configuration for `publish`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :publish

                    # @private
                    def initialize parent_rpcs = nil
                      publish_channel_connection_events_config = parent_rpcs.publish_channel_connection_events if parent_rpcs.respond_to? :publish_channel_connection_events
                      @publish_channel_connection_events = ::Gapic::Config::Method.new publish_channel_connection_events_config
                      publish_events_config = parent_rpcs.publish_events if parent_rpcs.respond_to? :publish_events
                      @publish_events = ::Gapic::Config::Method.new publish_events_config
                      publish_config = parent_rpcs.publish if parent_rpcs.respond_to? :publish
                      @publish = ::Gapic::Config::Method.new publish_config

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
  end
end
