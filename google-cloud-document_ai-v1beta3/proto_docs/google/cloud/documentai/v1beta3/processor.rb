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


module Google
  module Cloud
    module DocumentAI
      module V1beta3
        # The first-class citizen for DocumentAI. Each processor defines how to extract
        # structural information from a document.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Immutable. The resource name of the processor.
        #     Format: projects/\\{project}/locations/\\{location}/processors/\\{processor}
        # @!attribute [rw] type
        #   @return [::String]
        #     The processor type.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the processor.
        # @!attribute [r] state
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Processor::State]
        #     Output only. The state of the processor.
        # @!attribute [rw] default_processor_version
        #   @return [::String]
        #     The default processor version.
        # @!attribute [r] process_endpoint
        #   @return [::String]
        #     Output only. Immutable. The http endpoint that can be called to invoke processing.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the processor was created.
        # @!attribute [rw] kms_key_name
        #   @return [::String]
        #     The KMS key used for encryption/decryption in CMEK scenarios.
        #     See https://cloud.google.com/security-key-management.
        class Processor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The possible states of the processor.
          module State
            # The processor is in an unspecified state.
            STATE_UNSPECIFIED = 0

            # The processor is enabled.
            ENABLED = 1

            # The processor is disabled.
            DISABLED = 2

            # The processor is being enabled, will become ENABLED if successful.
            ENABLING = 3

            # The processor is being disabled, will become DISABLED if successful.
            DISABLING = 4

            # The processor is being created.
            CREATING = 5

            # The processor failed during creation.
            FAILED = 6

            # The processor is being deleted, will be removed if successful.
            DELETING = 7
          end
        end
      end
    end
  end
end
