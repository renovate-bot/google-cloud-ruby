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


module Google
  module Cloud
    module NetApp
      module V1
        # A NetApp Backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the backup.
        #     Format:
        #     `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::Backup::State]
        #     Output only. The backup state.
        # @!attribute [rw] description
        #   @return [::String]
        #     A description of the backup with 2048 characters or less.
        #     Requests with longer descriptions will be rejected.
        # @!attribute [r] volume_usage_bytes
        #   @return [::Integer]
        #     Output only. Size of the file system when the backup was created. When
        #     creating a new volume from the backup, the volume capacity will have to be
        #     at least as big.
        # @!attribute [r] backup_type
        #   @return [::Google::Cloud::NetApp::V1::Backup::Type]
        #     Output only. Type of backup, manually created or created by a backup
        #     policy.
        # @!attribute [rw] source_volume
        #   @return [::String]
        #     Volume full name of this backup belongs to.
        #     Format:
        #     `projects/{projects_id}/locations/{location}/volumes/{volume_id}`
        # @!attribute [rw] source_snapshot
        #   @return [::String]
        #     If specified, backup will be created from the given snapshot.
        #     If not specified, there will be a new snapshot taken to initiate the backup
        #     creation. Format:
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the backup was created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata.
        # @!attribute [r] chain_storage_bytes
        #   @return [::Integer]
        #     Output only. Total size of all backups in a chain in bytes = baseline
        #     backup size + sum(incremental backup size)
        # @!attribute [r] satisfies_pzs
        #   @return [::Boolean]
        #     Output only. Reserved for future use
        # @!attribute [r] satisfies_pzi
        #   @return [::Boolean]
        #     Output only. Reserved for future use
        # @!attribute [r] volume_region
        #   @return [::String]
        #     Output only. Region of the volume from which the backup was created.
        #     Format: `projects/{project_id}/locations/{location}`
        # @!attribute [r] backup_region
        #   @return [::String]
        #     Output only. Region in which backup is stored.
        #     Format: `projects/{project_id}/locations/{location}`
        # @!attribute [r] enforced_retention_end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time until which the backup is not deletable.
        class Backup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The Backup States
          module State
            # State not set.
            STATE_UNSPECIFIED = 0

            # Backup is being created. While in this state, the snapshot for the backup
            # point-in-time may not have been created yet, and so the point-in-time may
            # not have been fixed.
            CREATING = 1

            # Backup is being uploaded. While in this state, none of the writes to the
            # volume will be included in the backup.
            UPLOADING = 2

            # Backup is available for use.
            READY = 3

            # Backup is being deleted.
            DELETING = 4

            # Backup is not valid and cannot be used for creating new volumes or
            # restoring existing volumes.
            ERROR = 5

            # Backup is being updated.
            UPDATING = 6
          end

          # Backup types.
          module Type
            # Unspecified backup type.
            TYPE_UNSPECIFIED = 0

            # Manual backup type.
            MANUAL = 1

            # Scheduled backup type.
            SCHEDULED = 2
          end
        end

        # ListBackupsRequest lists backups.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The backupVault for which to retrieve backup information,
        #     in the format
        #     `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`.
        #     To retrieve backup information for all locations, use "-" for the
        #     `{location}` value.
        #     To retrieve backup information for all backupVaults, use "-" for the
        #     `{backup_vault_id}` value.
        #     To retrieve backup information for a volume, use "-" for the
        #     `{backup_vault_id}` value and specify volume full name with the filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return. The service may return fewer
        #     than this value. The maximum value
        #     is 1000; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value to use if there are additional
        #     results to retrieve for this list request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results. Supported values are "name", "name desc" or "" (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #     If specified, backups will be returned based on the attribute name that
        #     matches the filter expression. If empty, then no backups are filtered out.
        #     See https://google.aip.dev/160
        class ListBackupsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListBackupsResponse is the result of ListBackupsRequest.
        # @!attribute [rw] backups
        #   @return [::Array<::Google::Cloud::NetApp::V1::Backup>]
        #     A list of backups in the project.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token you can use to retrieve the next page of results. Not returned
        #     if there are no more results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListBackupsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetBackupRequest gets the state of a backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The backup resource name, in the format
        #     `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`
        class GetBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateBackupRequest creates a backup.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The NetApp backupVault to create the backups of, in the format
        #     `projects/*/locations/*/backupVaults/{backup_vault_id}`
        # @!attribute [rw] backup_id
        #   @return [::String]
        #     Required. The ID to use for the backup.
        #     The ID must be unique within the specified backupVault.
        #     Must contain only letters, numbers and hyphen, with the first
        #     character a letter, the last a letter or a
        #     number, and a 63 character maximum.
        # @!attribute [rw] backup
        #   @return [::Google::Cloud::NetApp::V1::Backup]
        #     Required. A backup resource
        class CreateBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteBackupRequest deletes a backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The backup resource name, in the format
        #     `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`
        class DeleteBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateBackupRequest updates description and/or labels for a backup.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     Backup resource to be updated.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] backup
        #   @return [::Google::Cloud::NetApp::V1::Backup]
        #     Required. The backup being updated
        class UpdateBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
