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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/orchestration/airflow/service/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :orchestration_airflow_service do |config|
  config.add_field! :endpoint,      nil, match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
  config.add_field! :universe_domain, nil, match: ::String
end

module Google
  module Cloud
    module Orchestration
      module Airflow
        module Service
          ##
          # Create a new client object for Environments.
          #
          # By default, this returns an instance of
          # [Google::Cloud::Orchestration::Airflow::Service::V1::Environments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-orchestration-airflow-service-v1/latest/Google-Cloud-Orchestration-Airflow-Service-V1-Environments-Client)
          # for a gRPC client for version V1 of the API.
          # However, you can specify a different API version by passing it in the
          # `version` parameter. If the Environments service is
          # supported by that API version, and the corresponding gem is available, the
          # appropriate versioned client will be returned.
          # You can also specify a different transport by passing `:rest` or `:grpc` in
          # the `transport` parameter.
          #
          # Raises an exception if the currently installed versioned client gem for the
          # given API version does not support the given transport of the Environments service.
          # You can determine whether the method will succeed by calling
          # {Google::Cloud::Orchestration::Airflow::Service.environments_available?}.
          #
          # ## About Environments
          #
          # Managed Apache Airflow Environments.
          #
          # @param version [::String, ::Symbol] The API version to connect to. Optional.
          #   Defaults to `:v1`.
          # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
          # @return [::Object] A client object for the specified version.
          #
          def self.environments version: :v1, transport: :grpc, &block
            require "google/cloud/orchestration/airflow/service/#{version.to_s.downcase}"

            package_name = Google::Cloud::Orchestration::Airflow::Service
                           .constants
                           .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                           .first
            service_module = Google::Cloud::Orchestration::Airflow::Service.const_get(package_name).const_get(:Environments)
            service_module = service_module.const_get(:Rest) if transport == :rest
            service_module.const_get(:Client).new(&block)
          end

          ##
          # Determines whether the Environments service is supported by the current client.
          # If true, you can retrieve a client object by calling {Google::Cloud::Orchestration::Airflow::Service.environments}.
          # If false, that method will raise an exception. This could happen if the given
          # API version does not exist or does not support the Environments service,
          # or if the versioned client gem needs an update to support the Environments service.
          #
          # @param version [::String, ::Symbol] The API version to connect to. Optional.
          #   Defaults to `:v1`.
          # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
          # @return [boolean] Whether the service is available.
          #
          def self.environments_available? version: :v1, transport: :grpc
            require "google/cloud/orchestration/airflow/service/#{version.to_s.downcase}"
            package_name = Google::Cloud::Orchestration::Airflow::Service
                           .constants
                           .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                           .first
            return false unless package_name
            service_module = Google::Cloud::Orchestration::Airflow::Service.const_get package_name
            return false unless service_module.const_defined? :Environments
            service_module = service_module.const_get :Environments
            if transport == :rest
              return false unless service_module.const_defined? :Rest
              service_module = service_module.const_get :Rest
            end
            service_module.const_defined? :Client
          rescue ::LoadError
            false
          end

          ##
          # Create a new client object for ImageVersions.
          #
          # By default, this returns an instance of
          # [Google::Cloud::Orchestration::Airflow::Service::V1::ImageVersions::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-orchestration-airflow-service-v1/latest/Google-Cloud-Orchestration-Airflow-Service-V1-ImageVersions-Client)
          # for a gRPC client for version V1 of the API.
          # However, you can specify a different API version by passing it in the
          # `version` parameter. If the ImageVersions service is
          # supported by that API version, and the corresponding gem is available, the
          # appropriate versioned client will be returned.
          # You can also specify a different transport by passing `:rest` or `:grpc` in
          # the `transport` parameter.
          #
          # Raises an exception if the currently installed versioned client gem for the
          # given API version does not support the given transport of the ImageVersions service.
          # You can determine whether the method will succeed by calling
          # {Google::Cloud::Orchestration::Airflow::Service.image_versions_available?}.
          #
          # ## About ImageVersions
          #
          # Readonly service to query available ImageVersions.
          #
          # @param version [::String, ::Symbol] The API version to connect to. Optional.
          #   Defaults to `:v1`.
          # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
          # @return [::Object] A client object for the specified version.
          #
          def self.image_versions version: :v1, transport: :grpc, &block
            require "google/cloud/orchestration/airflow/service/#{version.to_s.downcase}"

            package_name = Google::Cloud::Orchestration::Airflow::Service
                           .constants
                           .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                           .first
            service_module = Google::Cloud::Orchestration::Airflow::Service.const_get(package_name).const_get(:ImageVersions)
            service_module = service_module.const_get(:Rest) if transport == :rest
            service_module.const_get(:Client).new(&block)
          end

          ##
          # Determines whether the ImageVersions service is supported by the current client.
          # If true, you can retrieve a client object by calling {Google::Cloud::Orchestration::Airflow::Service.image_versions}.
          # If false, that method will raise an exception. This could happen if the given
          # API version does not exist or does not support the ImageVersions service,
          # or if the versioned client gem needs an update to support the ImageVersions service.
          #
          # @param version [::String, ::Symbol] The API version to connect to. Optional.
          #   Defaults to `:v1`.
          # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
          # @return [boolean] Whether the service is available.
          #
          def self.image_versions_available? version: :v1, transport: :grpc
            require "google/cloud/orchestration/airflow/service/#{version.to_s.downcase}"
            package_name = Google::Cloud::Orchestration::Airflow::Service
                           .constants
                           .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                           .first
            return false unless package_name
            service_module = Google::Cloud::Orchestration::Airflow::Service.const_get package_name
            return false unless service_module.const_defined? :ImageVersions
            service_module = service_module.const_get :ImageVersions
            if transport == :rest
              return false unless service_module.const_defined? :Rest
              service_module = service_module.const_get :Rest
            end
            service_module.const_defined? :Client
          rescue ::LoadError
            false
          end

          ##
          # Configure the google-cloud-orchestration-airflow-service library.
          #
          # The following configuration parameters are supported:
          #
          # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
          #   The path to the keyfile as a String, the contents of the keyfile as a
          #   Hash, or a Google::Auth::Credentials object.
          # * `lib_name` (*type:* `String`) -
          #   The library name as recorded in instrumentation and logging.
          # * `lib_version` (*type:* `String`) -
          #   The library version as recorded in instrumentation and logging.
          # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
          #   An array of interceptors that are run before calls are executed.
          # * `timeout` (*type:* `Numeric`) -
          #   Default timeout in seconds.
          # * `metadata` (*type:* `Hash{Symbol=>String}`) -
          #   Additional headers to be sent with the call.
          # * `retry_policy` (*type:* `Hash`) -
          #   The retry policy. The value is a hash with the following keys:
          #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
          #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
          #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
          #     * `:retry_codes` (*type:* `Array<String>`) -
          #       The error codes that should trigger a retry.
          #
          # @return [::Google::Cloud::Config] The default configuration used by this library
          #
          def self.configure
            yield ::Google::Cloud.configure.orchestration_airflow_service if block_given?

            ::Google::Cloud.configure.orchestration_airflow_service
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "service", "helpers.rb"
require "google/cloud/orchestration/airflow/service/helpers" if ::File.file? helper_path
