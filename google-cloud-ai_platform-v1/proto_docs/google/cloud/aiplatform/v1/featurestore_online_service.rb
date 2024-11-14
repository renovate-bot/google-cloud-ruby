# frozen_string_literal: true

# Copyright 2022 Google LLC
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
        # {::Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#write_feature_values FeaturestoreOnlineServingService.WriteFeatureValues}.
        # @!attribute [rw] entity_type
        #   @return [::String]
        #     Required. The resource name of the EntityType for the entities being
        #     written. Value format:
        #     `projects/{project}/locations/{location}/featurestores/
        #     \\{featurestore}/entityTypes/\\{entityType}`. For example,
        #     for a machine learning model predicting user clicks on a website, an
        #     EntityType ID could be `user`.
        # @!attribute [rw] payloads
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::WriteFeatureValuesPayload>]
        #     Required. The entities to be written. Up to 100,000 feature values can be
        #     written across all `payloads`.
        class WriteFeatureValuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Contains Feature values to be written for a specific entity.
        # @!attribute [rw] entity_id
        #   @return [::String]
        #     Required. The ID of the entity.
        # @!attribute [rw] feature_values
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::AIPlatform::V1::FeatureValue}]
        #     Required. Feature values to be written, mapping from Feature ID to value.
        #     Up to 100,000 `feature_values` entries may be written across all payloads.
        #     The feature generation time, aligned by days, must be no older than five
        #     years (1825 days) and no later than one year (366 days) in the future.
        class WriteFeatureValuesPayload
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::AIPlatform::V1::FeatureValue]
          class FeatureValuesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#write_feature_values FeaturestoreOnlineServingService.WriteFeatureValues}.
        class WriteFeatureValuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#read_feature_values FeaturestoreOnlineServingService.ReadFeatureValues}.
        # @!attribute [rw] entity_type
        #   @return [::String]
        #     Required. The resource name of the EntityType for the entity being read.
        #     Value format:
        #     `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entityType}`.
        #     For example, for a machine learning model predicting user clicks on a
        #     website, an EntityType ID could be `user`.
        # @!attribute [rw] entity_id
        #   @return [::String]
        #     Required. ID for a specific entity. For example,
        #     for a machine learning model predicting user clicks on a website, an entity
        #     ID could be `user_123`.
        # @!attribute [rw] feature_selector
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureSelector]
        #     Required. Selector choosing Features of the target EntityType.
        class ReadFeatureValuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#read_feature_values FeaturestoreOnlineServingService.ReadFeatureValues}.
        # @!attribute [rw] header
        #   @return [::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse::Header]
        #     Response header.
        # @!attribute [rw] entity_view
        #   @return [::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse::EntityView]
        #     Entity view with Feature values. This may be the entity in the
        #     Featurestore if values for all Features were requested, or a projection
        #     of the entity in the Featurestore if values for only some Features were
        #     requested.
        class ReadFeatureValuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Metadata for requested Features.
          # @!attribute [rw] id
          #   @return [::String]
          #     Feature ID.
          class FeatureDescriptor
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response header with metadata for the requested
          # {::Google::Cloud::AIPlatform::V1::ReadFeatureValuesRequest#entity_type ReadFeatureValuesRequest.entity_type}
          # and Features.
          # @!attribute [rw] entity_type
          #   @return [::String]
          #     The resource name of the EntityType from the
          #     {::Google::Cloud::AIPlatform::V1::ReadFeatureValuesRequest ReadFeatureValuesRequest}.
          #     Value format:
          #     `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entityType}`.
          # @!attribute [rw] feature_descriptors
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse::FeatureDescriptor>]
          #     List of Feature metadata corresponding to each piece of
          #     {::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse::EntityView#data ReadFeatureValuesResponse.EntityView.data}.
          class Header
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Entity view with Feature values.
          # @!attribute [rw] entity_id
          #   @return [::String]
          #     ID of the requested entity.
          # @!attribute [rw] data
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse::EntityView::Data>]
          #     Each piece of data holds the k
          #     requested values for one requested Feature. If no values
          #     for the requested Feature exist, the corresponding cell will be empty.
          #     This has the same size and is in the same order as the features from the
          #     header
          #     {::Google::Cloud::AIPlatform::V1::ReadFeatureValuesResponse#header ReadFeatureValuesResponse.header}.
          class EntityView
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Container to hold value(s), successive in time, for one Feature from the
            # request.
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::FeatureValue]
            #     Feature value if a single value is requested.
            # @!attribute [rw] values
            #   @return [::Google::Cloud::AIPlatform::V1::FeatureValueList]
            #     Feature values list if values, successive in time, are requested.
            #     If the requested number of values is greater than the number of
            #     existing Feature values, nonexistent values are omitted instead of
            #     being returned as empty.
            class Data
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::FeaturestoreOnlineServingService::Client#streaming_read_feature_values FeaturestoreOnlineServingService.StreamingReadFeatureValues}.
        # @!attribute [rw] entity_type
        #   @return [::String]
        #     Required. The resource name of the entities' type.
        #     Value format:
        #     `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entityType}`.
        #     For example,
        #     for a machine learning model predicting user clicks on a website, an
        #     EntityType ID could be `user`.
        # @!attribute [rw] entity_ids
        #   @return [::Array<::String>]
        #     Required. IDs of entities to read Feature values of. The maximum number of
        #     IDs is 100. For example, for a machine learning model predicting user
        #     clicks on a website, an entity ID could be `user_123`.
        # @!attribute [rw] feature_selector
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureSelector]
        #     Required. Selector choosing Features of the target EntityType. Feature IDs
        #     will be deduplicated.
        class StreamingReadFeatureValuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Value for a feature.
        # @!attribute [rw] bool_value
        #   @return [::Boolean]
        #     Bool type feature value.
        # @!attribute [rw] double_value
        #   @return [::Float]
        #     Double type feature value.
        # @!attribute [rw] int64_value
        #   @return [::Integer]
        #     Int64 feature value.
        # @!attribute [rw] string_value
        #   @return [::String]
        #     String feature value.
        # @!attribute [rw] bool_array_value
        #   @return [::Google::Cloud::AIPlatform::V1::BoolArray]
        #     A list of bool type feature value.
        # @!attribute [rw] double_array_value
        #   @return [::Google::Cloud::AIPlatform::V1::DoubleArray]
        #     A list of double type feature value.
        # @!attribute [rw] int64_array_value
        #   @return [::Google::Cloud::AIPlatform::V1::Int64Array]
        #     A list of int64 type feature value.
        # @!attribute [rw] string_array_value
        #   @return [::Google::Cloud::AIPlatform::V1::StringArray]
        #     A list of string type feature value.
        # @!attribute [rw] bytes_value
        #   @return [::String]
        #     Bytes feature value.
        # @!attribute [rw] struct_value
        #   @return [::Google::Cloud::AIPlatform::V1::StructValue]
        #     A struct type feature value.
        # @!attribute [rw] metadata
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureValue::Metadata]
        #     Metadata of feature value.
        class FeatureValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Metadata of feature value.
          # @!attribute [rw] generate_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Feature generation timestamp. Typically, it is provided by user at
          #     feature ingestion time. If not, feature store
          #     will use the system timestamp when the data is ingested into feature
          #     store. For streaming ingestion, the time, aligned by days, must be no
          #     older than five years (1825 days) and no later than one year (366 days)
          #     in the future.
          class Metadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Struct (or object) type feature value.
        # @!attribute [rw] values
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::StructFieldValue>]
        #     A list of field values.
        class StructValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # One field of a Struct (or object) type feature value.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the field in the struct feature.
        # @!attribute [rw] value
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureValue]
        #     The value for this field.
        class StructFieldValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Container for list of values.
        # @!attribute [rw] values
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::FeatureValue>]
        #     A list of feature values. All of them should be the same data type.
        class FeatureValueList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
