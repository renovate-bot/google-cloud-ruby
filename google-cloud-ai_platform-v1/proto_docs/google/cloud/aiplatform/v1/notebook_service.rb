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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#create_notebook_runtime_template NotebookService.CreateNotebookRuntimeTemplate}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the
        #     NotebookRuntimeTemplate. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] notebook_runtime_template
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntimeTemplate]
        #     Required. The NotebookRuntimeTemplate to create.
        # @!attribute [rw] notebook_runtime_template_id
        #   @return [::String]
        #     Optional. User specified ID for the notebook runtime template.
        class CreateNotebookRuntimeTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#create_notebook_runtime_template NotebookService.CreateNotebookRuntimeTemplate}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class CreateNotebookRuntimeTemplateOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#get_notebook_runtime_template NotebookService.GetNotebookRuntimeTemplate}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntimeTemplate resource.
        #     Format:
        #     `projects/{project}/locations/{location}/notebookRuntimeTemplates/{notebook_runtime_template}`
        class GetNotebookRuntimeTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtime_templates NotebookService.ListNotebookRuntimeTemplates}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     NotebookRuntimeTemplates.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. For field
        #     names both snake_case and camelCase are supported.
        #
        #       * `notebookRuntimeTemplate` supports = and !=. `notebookRuntimeTemplate`
        #         represents the NotebookRuntimeTemplate ID,
        #         i.e. the last segment of the NotebookRuntimeTemplate's [resource name]
        #         [google.cloud.aiplatform.v1.NotebookRuntimeTemplate.name].
        #       * `display_name` supports = and !=
        #       * `labels` supports general map functions that is:
        #         * `labels.key=value` - key:value equality
        #         * `labels.key:* or labels:key - key existence
        #         * A key including a space must be quoted. `labels."a key"`.
        #       * `notebookRuntimeType` supports = and !=. notebookRuntimeType enum:
        #       [USER_DEFINED, ONE_CLICK].
        #
        #     Some examples:
        #
        #       * `notebookRuntimeTemplate=notebookRuntimeTemplate123`
        #       * `displayName="myDisplayName"`
        #       * `labels.myKey="myValue"`
        #       * `notebookRuntimeType=USER_DEFINED`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookRuntimeTemplatesResponse#next_page_token ListNotebookRuntimeTemplatesResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtime_templates NotebookService.ListNotebookRuntimeTemplates}
        #     call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. A comma-separated list of fields to order by, sorted in ascending
        #     order. Use "desc" after a field name for descending. Supported fields:
        #
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        #
        #     Example: `display_name, create_time desc`.
        class ListNotebookRuntimeTemplatesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtime_templates NotebookService.ListNotebookRuntimeTemplates}.
        # @!attribute [rw] notebook_runtime_templates
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NotebookRuntimeTemplate>]
        #     List of NotebookRuntimeTemplates in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookRuntimeTemplatesRequest#page_token ListNotebookRuntimeTemplatesRequest.page_token}
        #     to obtain that page.
        class ListNotebookRuntimeTemplatesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#delete_notebook_runtime_template NotebookService.DeleteNotebookRuntimeTemplate}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntimeTemplate resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/notebookRuntimeTemplates/{notebook_runtime_template}`
        class DeleteNotebookRuntimeTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#update_notebook_runtime_template NotebookService.UpdateNotebookRuntimeTemplate}.
        # @!attribute [rw] notebook_runtime_template
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntimeTemplate]
        #     Required. The NotebookRuntimeTemplate to update.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource.
        #     For the `FieldMask` definition, see
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}. Input format:
        #     `{paths: "${updated_filed}"}` Updatable fields:
        #
        #       * `encryption_spec.kms_key_name`
        class UpdateNotebookRuntimeTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#assign_notebook_runtime NotebookService.AssignNotebookRuntime}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to get the NotebookRuntime
        #     assignment. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] notebook_runtime_template
        #   @return [::String]
        #     Required. The resource name of the NotebookRuntimeTemplate based on which a
        #     NotebookRuntime will be assigned (reuse or create a new one).
        # @!attribute [rw] notebook_runtime
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookRuntime]
        #     Required. Provide runtime specific information (e.g. runtime owner,
        #     notebook id) used for NotebookRuntime assignment.
        # @!attribute [rw] notebook_runtime_id
        #   @return [::String]
        #     Optional. User specified ID for the notebook runtime.
        class AssignNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#assign_notebook_runtime NotebookService.AssignNotebookRuntime}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     A human-readable message that shows the intermediate progress details of
        #     NotebookRuntime.
        class AssignNotebookRuntimeOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#get_notebook_runtime NotebookService.GetNotebookRuntime}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntime resource.
        #     Instead of checking whether the name is in valid NotebookRuntime resource
        #     name format, directly throw NotFound exception if there is no such
        #     NotebookRuntime in spanner.
        class GetNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtimes NotebookService.ListNotebookRuntimes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     NotebookRuntimes.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. For field
        #     names both snake_case and camelCase are supported.
        #
        #       * `notebookRuntime` supports = and !=. `notebookRuntime` represents the
        #         NotebookRuntime ID,
        #         i.e. the last segment of the NotebookRuntime's [resource name]
        #         [google.cloud.aiplatform.v1.NotebookRuntime.name].
        #       * `displayName` supports = and != and regex.
        #       * `notebookRuntimeTemplate` supports = and !=. `notebookRuntimeTemplate`
        #         represents the NotebookRuntimeTemplate ID,
        #         i.e. the last segment of the NotebookRuntimeTemplate's [resource name]
        #         [google.cloud.aiplatform.v1.NotebookRuntimeTemplate.name].
        #       * `healthState` supports = and !=. healthState enum: [HEALTHY, UNHEALTHY,
        #       HEALTH_STATE_UNSPECIFIED].
        #       * `runtimeState` supports = and !=. runtimeState enum:
        #       [RUNTIME_STATE_UNSPECIFIED, RUNNING, BEING_STARTED, BEING_STOPPED,
        #       STOPPED, BEING_UPGRADED, ERROR, INVALID].
        #       * `runtimeUser` supports = and !=.
        #       * API version is UI only: `uiState` supports = and !=. uiState enum:
        #       [UI_RESOURCE_STATE_UNSPECIFIED, UI_RESOURCE_STATE_BEING_CREATED,
        #       UI_RESOURCE_STATE_ACTIVE, UI_RESOURCE_STATE_BEING_DELETED,
        #       UI_RESOURCE_STATE_CREATION_FAILED].
        #       * `notebookRuntimeType` supports = and !=. notebookRuntimeType enum:
        #       [USER_DEFINED, ONE_CLICK].
        #
        #     Some examples:
        #
        #       * `notebookRuntime="notebookRuntime123"`
        #       * `displayName="myDisplayName"` and `displayName=~"myDisplayNameRegex"`
        #       * `notebookRuntimeTemplate="notebookRuntimeTemplate321"`
        #       * `healthState=HEALTHY`
        #       * `runtimeState=RUNNING`
        #       * `runtimeUser="test@google.com"`
        #       * `uiState=UI_RESOURCE_STATE_BEING_DELETED`
        #       * `notebookRuntimeType=USER_DEFINED`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookRuntimesResponse#next_page_token ListNotebookRuntimesResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtimes NotebookService.ListNotebookRuntimes}
        #     call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. A comma-separated list of fields to order by, sorted in ascending
        #     order. Use "desc" after a field name for descending. Supported fields:
        #
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        #
        #     Example: `display_name, create_time desc`.
        class ListNotebookRuntimesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_runtimes NotebookService.ListNotebookRuntimes}.
        # @!attribute [rw] notebook_runtimes
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NotebookRuntime>]
        #     List of NotebookRuntimes in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookRuntimesRequest#page_token ListNotebookRuntimesRequest.page_token}
        #     to obtain that page.
        class ListNotebookRuntimesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#delete_notebook_runtime NotebookService.DeleteNotebookRuntime}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntime resource to be deleted.
        #     Instead of checking whether the name is in valid NotebookRuntime resource
        #     name format, directly throw NotFound exception if there is no such
        #     NotebookRuntime in spanner.
        class DeleteNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#upgrade_notebook_runtime NotebookService.UpgradeNotebookRuntime}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntime resource to be upgrade.
        #     Instead of checking whether the name is in valid NotebookRuntime resource
        #     name format, directly throw NotFound exception if there is no such
        #     NotebookRuntime in spanner.
        class UpgradeNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#upgrade_notebook_runtime NotebookService.UpgradeNotebookRuntime}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     A human-readable message that shows the intermediate progress details of
        #     NotebookRuntime.
        class UpgradeNotebookRuntimeOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#upgrade_notebook_runtime NotebookService.UpgradeNotebookRuntime}.
        class UpgradeNotebookRuntimeResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#start_notebook_runtime NotebookService.StartNotebookRuntime}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntime resource to be started.
        #     Instead of checking whether the name is in valid NotebookRuntime resource
        #     name format, directly throw NotFound exception if there is no such
        #     NotebookRuntime in spanner.
        class StartNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#start_notebook_runtime NotebookService.StartNotebookRuntime}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     A human-readable message that shows the intermediate progress details of
        #     NotebookRuntime.
        class StartNotebookRuntimeOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#start_notebook_runtime NotebookService.StartNotebookRuntime}.
        class StartNotebookRuntimeResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#stop_notebook_runtime NotebookService.StopNotebookRuntime}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookRuntime resource to be stopped.
        #     Instead of checking whether the name is in valid NotebookRuntime resource
        #     name format, directly throw NotFound exception if there is no such
        #     NotebookRuntime in spanner.
        class StopNotebookRuntimeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#stop_notebook_runtime NotebookService.StopNotebookRuntime}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class StopNotebookRuntimeOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#stop_notebook_runtime NotebookService.StopNotebookRuntime}.
        class StopNotebookRuntimeResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [NotebookService.CreateNotebookExecutionJob]
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the
        #     NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] notebook_execution_job
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookExecutionJob]
        #     Required. The NotebookExecutionJob to create.
        # @!attribute [rw] notebook_execution_job_id
        #   @return [::String]
        #     Optional. User specified ID for the NotebookExecutionJob.
        class CreateNotebookExecutionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata information for
        # {::Google::Cloud::AIPlatform::V1::NotebookService::Client#create_notebook_execution_job NotebookService.CreateNotebookExecutionJob}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     A human-readable message that shows the intermediate progress details of
        #     NotebookRuntime.
        class CreateNotebookExecutionJobOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [NotebookService.GetNotebookExecutionJob]
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookExecutionJob resource.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookExecutionJobView]
        #     Optional. The NotebookExecutionJob view. Defaults to BASIC.
        class GetNotebookExecutionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [NotebookService.ListNotebookExecutionJobs]
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     NotebookExecutionJobs.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. For field
        #     names both snake_case and camelCase are supported.
        #
        #       * `notebookExecutionJob` supports = and !=. `notebookExecutionJob`
        #       represents the NotebookExecutionJob ID.
        #       * `displayName` supports = and != and regex.
        #       * `schedule` supports = and != and regex.
        #
        #     Some examples:
        #       * `notebookExecutionJob="123"`
        #       * `notebookExecutionJob="my-execution-job"`
        #       * `displayName="myDisplayName"` and `displayName=~"myDisplayNameRegex"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookExecutionJobsResponse#next_page_token ListNotebookExecutionJobsResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::NotebookService::Client#list_notebook_execution_jobs NotebookService.ListNotebookExecutionJobs}
        #     call.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. A comma-separated list of fields to order by, sorted in ascending
        #     order. Use "desc" after a field name for descending. Supported fields:
        #
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        #
        #     Example: `display_name, create_time desc`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::AIPlatform::V1::NotebookExecutionJobView]
        #     Optional. The NotebookExecutionJob view. Defaults to BASIC.
        class ListNotebookExecutionJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [NotebookService.CreateNotebookExecutionJob]
        # @!attribute [rw] notebook_execution_jobs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NotebookExecutionJob>]
        #     List of NotebookExecutionJobs in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListNotebookExecutionJobsRequest#page_token ListNotebookExecutionJobsRequest.page_token}
        #     to obtain that page.
        class ListNotebookExecutionJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [NotebookService.DeleteNotebookExecutionJob]
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the NotebookExecutionJob resource to be deleted.
        class DeleteNotebookExecutionJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Views for Get/List NotebookExecutionJob
        module NotebookExecutionJobView
          # When unspecified, the API defaults to the BASIC view.
          NOTEBOOK_EXECUTION_JOB_VIEW_UNSPECIFIED = 0

          # Includes all fields except for direct notebook inputs.
          NOTEBOOK_EXECUTION_JOB_VIEW_BASIC = 1

          # Includes all fields.
          NOTEBOOK_EXECUTION_JOB_VIEW_FULL = 2
        end
      end
    end
  end
end
