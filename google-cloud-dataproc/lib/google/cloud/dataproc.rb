# frozen_string_literal: true

# Copyright 2020 Google LLC
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
require "google/cloud/dataproc/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dataproc do |config|
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
    module Dataproc
      ##
      # Create a new client object for AutoscalingPolicyService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-AutoscalingPolicyService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the AutoscalingPolicyService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the AutoscalingPolicyService service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.autoscaling_policy_service_available?}.
      #
      # ## About AutoscalingPolicyService
      #
      # The API interface for managing autoscaling policies in the
      # Dataproc API.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.autoscaling_policy_service version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:AutoscalingPolicyService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the AutoscalingPolicyService service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.autoscaling_policy_service}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the AutoscalingPolicyService service,
      # or if the versioned client gem needs an update to support the AutoscalingPolicyService service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.autoscaling_policy_service_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :AutoscalingPolicyService
        service_module = service_module.const_get :AutoscalingPolicyService
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for BatchController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::BatchController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-BatchController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the BatchController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the BatchController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.batch_controller_available?}.
      #
      # ## About BatchController
      #
      # The BatchController provides methods to manage batch workloads.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.batch_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:BatchController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the BatchController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.batch_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the BatchController service,
      # or if the versioned client gem needs an update to support the BatchController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.batch_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :BatchController
        service_module = service_module.const_get :BatchController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for ClusterController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::ClusterController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-ClusterController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ClusterController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the ClusterController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.cluster_controller_available?}.
      #
      # ## About ClusterController
      #
      # The ClusterControllerService provides methods to manage clusters
      # of Compute Engine instances.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.cluster_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:ClusterController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the ClusterController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.cluster_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the ClusterController service,
      # or if the versioned client gem needs an update to support the ClusterController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.cluster_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :ClusterController
        service_module = service_module.const_get :ClusterController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for JobController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::JobController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-JobController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the JobController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the JobController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.job_controller_available?}.
      #
      # ## About JobController
      #
      # The JobController provides methods to manage jobs.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.job_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:JobController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the JobController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.job_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the JobController service,
      # or if the versioned client gem needs an update to support the JobController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.job_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :JobController
        service_module = service_module.const_get :JobController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for NodeGroupController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::NodeGroupController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-NodeGroupController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the NodeGroupController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the NodeGroupController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.node_group_controller_available?}.
      #
      # ## About NodeGroupController
      #
      # The `NodeGroupControllerService` provides methods to manage node groups
      # of Compute Engine managed instances.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.node_group_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:NodeGroupController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the NodeGroupController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.node_group_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the NodeGroupController service,
      # or if the versioned client gem needs an update to support the NodeGroupController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.node_group_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :NodeGroupController
        service_module = service_module.const_get :NodeGroupController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for SessionController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::SessionController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-SessionController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SessionController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the SessionController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.session_controller_available?}.
      #
      # ## About SessionController
      #
      # The `SessionController` provides methods to manage interactive sessions.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.session_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:SessionController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the SessionController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.session_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the SessionController service,
      # or if the versioned client gem needs an update to support the SessionController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.session_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :SessionController
        service_module = service_module.const_get :SessionController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for SessionTemplateController.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::SessionTemplateController::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-SessionTemplateController-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SessionTemplateController service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the SessionTemplateController service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.session_template_controller_available?}.
      #
      # ## About SessionTemplateController
      #
      # The SessionTemplateController provides methods to manage session templates.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.session_template_controller version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:SessionTemplateController)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the SessionTemplateController service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.session_template_controller}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the SessionTemplateController service,
      # or if the versioned client gem needs an update to support the SessionTemplateController service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.session_template_controller_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :SessionTemplateController
        service_module = service_module.const_get :SessionTemplateController
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for WorkflowTemplateService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dataproc::V1::WorkflowTemplateService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataproc-v1/latest/Google-Cloud-Dataproc-V1-WorkflowTemplateService-Client)
      # for a gRPC client for version V1 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the WorkflowTemplateService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the WorkflowTemplateService service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::Dataproc.workflow_template_service_available?}.
      #
      # ## About WorkflowTemplateService
      #
      # The API interface for managing Workflow Templates in the
      # Dataproc API.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.workflow_template_service version: :v1, transport: :grpc, &block
        require "google/cloud/dataproc/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Dataproc.const_get(package_name).const_get(:WorkflowTemplateService)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the WorkflowTemplateService service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::Dataproc.workflow_template_service}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the WorkflowTemplateService service,
      # or if the versioned client gem needs an update to support the WorkflowTemplateService service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.workflow_template_service_available? version: :v1, transport: :grpc
        require "google/cloud/dataproc/#{version.to_s.downcase}"
        package_name = Google::Cloud::Dataproc
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::Dataproc.const_get package_name
        return false unless service_module.const_defined? :WorkflowTemplateService
        service_module = service_module.const_get :WorkflowTemplateService
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Configure the google-cloud-dataproc library.
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
        yield ::Google::Cloud.configure.dataproc if block_given?

        ::Google::Cloud.configure.dataproc
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataproc", "helpers.rb"
require "google/cloud/dataproc/helpers" if ::File.file? helper_path
