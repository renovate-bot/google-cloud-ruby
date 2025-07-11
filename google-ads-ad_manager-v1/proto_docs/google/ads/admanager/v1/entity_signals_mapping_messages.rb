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
  module Ads
    module AdManager
      module V1
        # The `EntitySignalsMapping` resource.
        # @!attribute [rw] audience_segment_id
        #   @return [::Integer]
        #     ID of an AudienceSegment that this mapping belongs to.
        #
        #     Note: The following fields are mutually exclusive: `audience_segment_id`, `content_bundle_id`, `custom_targeting_value_id`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] content_bundle_id
        #   @return [::Integer]
        #     ID of a ContentBundle that this mapping belongs to.
        #
        #     Note: The following fields are mutually exclusive: `content_bundle_id`, `audience_segment_id`, `custom_targeting_value_id`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] custom_targeting_value_id
        #   @return [::Integer]
        #     ID of a CustomValue that this mapping belongs to.
        #
        #     Note: The following fields are mutually exclusive: `custom_targeting_value_id`, `audience_segment_id`, `content_bundle_id`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the `EntitySignalsMapping`.
        #     Format:
        #     `networks/{network_code}/entitySignalsMappings/{entity_signals_mapping_id}`
        # @!attribute [r] entity_signals_mapping_id
        #   @return [::Integer]
        #     Output only. `EntitySignalsMapping` ID.
        # @!attribute [rw] taxonomy_category_ids
        #   @return [::Array<::Integer>]
        #     Optional. The IDs of the categories that are associated with the
        #     referencing entity.
        class EntitySignalsMapping
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
