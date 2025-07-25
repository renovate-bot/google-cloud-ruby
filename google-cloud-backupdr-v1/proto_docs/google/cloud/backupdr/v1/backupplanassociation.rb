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
    module BackupDR
      module V1
        # A BackupPlanAssociation represents a single BackupPlanAssociation which
        # contains details like workload, backup plan etc
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Identifier. The resource name of BackupPlanAssociation in
        #     below format Format :
        #     projects/\\{project}/locations/\\{location}/backupPlanAssociations/\\{backupPlanAssociationId}
        # @!attribute [rw] resource_type
        #   @return [::String]
        #     Required. Immutable. Resource type of workload on which backupplan is
        #     applied
        # @!attribute [rw] resource
        #   @return [::String]
        #     Required. Immutable. Resource name of workload on which the backup plan is
        #     applied.
        #
        #     The format can either be the resource name (e.g.,
        #     "projects/my-project/zones/us-central1-a/instances/my-instance") or the
        #     full resource URI (e.g.,
        #     "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-a/instances/my-instance").
        # @!attribute [rw] backup_plan
        #   @return [::String]
        #     Required. Resource name of backup plan which needs to be applied on
        #     workload. Format:
        #     projects/\\{project}/locations/\\{location}/backupPlans/\\{backupPlanId}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was updated.
        # @!attribute [r] state
        #   @return [::Google::Cloud::BackupDR::V1::BackupPlanAssociation::State]
        #     Output only. The BackupPlanAssociation resource state.
        # @!attribute [r] rules_config_info
        #   @return [::Array<::Google::Cloud::BackupDR::V1::RuleConfigInfo>]
        #     Output only. The config info related to backup rules.
        # @!attribute [r] data_source
        #   @return [::String]
        #     Output only. Resource name of data source which will be used as storage
        #     location for backups taken. Format :
        #     projects/\\{project}/locations/\\{location}/backupVaults/\\{backupvault}/dataSources/\\{datasource}
        # @!attribute [r] cloud_sql_instance_backup_plan_association_properties
        #   @return [::Google::Cloud::BackupDR::V1::CloudSqlInstanceBackupPlanAssociationProperties]
        #     Output only. Cloud SQL instance's backup plan association properties.
        # @!attribute [r] backup_plan_revision_id
        #   @return [::String]
        #     Output only. The user friendly revision ID of the `BackupPlanRevision`.
        #
        #     Example: v0, v1, v2, etc.
        # @!attribute [r] backup_plan_revision_name
        #   @return [::String]
        #     Output only. The resource id of the `BackupPlanRevision`.
        #
        #     Format:
        #     `projects/{project}/locations/{location}/backupPlans/{backup_plan}/revisions/{revision_id}`
        class BackupPlanAssociation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum for State of BackupPlan Association
          module State
            # State not set.
            STATE_UNSPECIFIED = 0

            # The resource is being created.
            CREATING = 1

            # The resource has been created and is fully usable.
            ACTIVE = 2

            # The resource is being deleted.
            DELETING = 3

            # The resource has been created but is not usable.
            INACTIVE = 4

            # The resource is being updated.
            UPDATING = 5
          end
        end

        # Message for rules config info.
        # @!attribute [r] rule_id
        #   @return [::String]
        #     Output only. Backup Rule id fetched from backup plan.
        # @!attribute [r] last_backup_state
        #   @return [::Google::Cloud::BackupDR::V1::RuleConfigInfo::LastBackupState]
        #     Output only. The last backup state for rule.
        # @!attribute [r] last_backup_error
        #   @return [::Google::Rpc::Status]
        #     Output only. google.rpc.Status object to store the last backup error.
        # @!attribute [r] last_successful_backup_consistency_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The point in time when the last successful backup was captured
        #     from the source.
        class RuleConfigInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum for LastBackupState
          module LastBackupState
            # State not set.
            LAST_BACKUP_STATE_UNSPECIFIED = 0

            # The first backup is pending.
            FIRST_BACKUP_PENDING = 1

            # The most recent backup could not be run/failed because of the lack of
            # permissions.
            PERMISSION_DENIED = 2

            # The last backup operation succeeded.
            SUCCEEDED = 3

            # The last backup operation failed.
            FAILED = 4
          end
        end

        # Request message for creating a backup plan.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The backup plan association project and location in the format
        #     `projects/{project_id}/locations/{location}`. In Cloud BackupDR locations
        #     map to GCP regions, for example **us-central1**.
        # @!attribute [rw] backup_plan_association_id
        #   @return [::String]
        #     Required. The name of the backup plan association to create. The name must
        #     be unique for the specified project and location.
        # @!attribute [rw] backup_plan_association
        #   @return [::Google::Cloud::BackupDR::V1::BackupPlanAssociation]
        #     Required. The resource being created
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateBackupPlanAssociationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for List BackupPlanAssociation
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location for which to retrieve backup Plan
        #     Associations information, in the format
        #     `projects/{project_id}/locations/{location}`. In Cloud BackupDR, locations
        #     map to GCP regions, for example **us-central1**. To retrieve backup plan
        #     associations for all locations, use "-" for the
        #     `{location}` value.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results
        class ListBackupPlanAssociationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for List BackupPlanAssociation
        # @!attribute [rw] backup_plan_associations
        #   @return [::Array<::Google::Cloud::BackupDR::V1::BackupPlanAssociation>]
        #     The list of Backup Plan Associations in the project for the specified
        #     location.
        #
        #     If the `{location}` value in the request is "-", the response contains a
        #     list of instances from all locations. In case any location is unreachable,
        #     the response will only return backup plan associations in reachable
        #     locations and the 'unreachable' field will be populated with a list of
        #     unreachable locations.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListBackupPlanAssociationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the FetchBackupPlanAssociationsForResourceType method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        #     Format: projects/\\{project}/locations/\\{location}
        # @!attribute [rw] resource_type
        #   @return [::String]
        #     Required. The type of the GCP resource.
        #     Ex: sql.googleapis.com/Instance
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of BackupPlanAssociations to return. The
        #     service may return fewer than this value. If unspecified, at most 50
        #     BackupPlanAssociations will be returned. The maximum value is 100; values
        #     above 100 will be coerced to 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous call of
        #     `FetchBackupPlanAssociationsForResourceType`.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     `FetchBackupPlanAssociationsForResourceType` must match
        #     the call that provided the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. A filter expression that filters the results fetched in the
        #     response. The expression must specify the field name, a comparison
        #     operator, and the value that you want to use for filtering. Supported
        #     fields:
        #     * resource
        #     * backup_plan
        #     * state
        #     * data_source
        #     * cloud_sql_instance_backup_plan_association_properties.instance_create_time
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. A comma-separated list of fields to order by, sorted in ascending
        #     order. Use "desc" after a field name for descending.
        #
        #     Supported fields:
        #     * name
        class FetchBackupPlanAssociationsForResourceTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the FetchBackupPlanAssociationsForResourceType method.
        # @!attribute [r] backup_plan_associations
        #   @return [::Array<::Google::Cloud::BackupDR::V1::BackupPlanAssociation>]
        #     Output only. The BackupPlanAssociations from the specified parent.
        # @!attribute [r] next_page_token
        #   @return [::String]
        #     Output only. A token, which can be sent as `page_token` to retrieve the
        #     next page. If this field is omitted, there are no subsequent pages.
        class FetchBackupPlanAssociationsForResourceTypeResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for getting a BackupPlanAssociation resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the backup plan association resource, in the format
        #     `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
        class GetBackupPlanAssociationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for deleting a backup plan association.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the backup plan association resource, in the format
        #     `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteBackupPlanAssociationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for updating a backup plan association.
        # @!attribute [rw] backup_plan_association
        #   @return [::Google::Cloud::BackupDR::V1::BackupPlanAssociation]
        #     Required. The resource being updated
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The list of fields to update.
        #     Field mask is used to specify the fields to be overwritten in the
        #     BackupPlanAssociation resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then the request will fail.
        #     Currently backup_plan_association.backup_plan is the only supported field.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateBackupPlanAssociationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for triggering a backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the backup plan association resource, in the format
        #     `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
        # @!attribute [rw] rule_id
        #   @return [::String]
        #     Required. backup rule_id for which a backup needs to be triggered.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class TriggerBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
