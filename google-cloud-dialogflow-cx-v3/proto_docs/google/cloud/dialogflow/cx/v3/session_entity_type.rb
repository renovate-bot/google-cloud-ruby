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
    module Dialogflow
      module CX
        module V3
          # Session entity types are referred to as **User** entity types and are
          # entities that are built for an individual user such as favorites,
          # preferences, playlists, and so on.
          #
          # You can redefine a session entity type at the session level to extend or
          # replace a {::Google::Cloud::Dialogflow::CX::V3::EntityType custom entity type} at
          # the user session level (we refer to the entity types defined at the agent
          # level as "custom entity types").
          #
          # Note: session entity types apply to all queries, regardless of the language.
          #
          # For more information about entity types, see the [Dialogflow
          # documentation](https://cloud.google.com/dialogflow/docs/entities-overview).
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The unique identifier of the session entity type.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`.
          #     If `Environment ID` is not specified, we assume default 'draft'
          #     environment.
          # @!attribute [rw] entity_override_mode
          #   @return [::Google::Cloud::Dialogflow::CX::V3::SessionEntityType::EntityOverrideMode]
          #     Required. Indicates whether the additional data should override or
          #     supplement the custom entity type definition.
          # @!attribute [rw] entities
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::EntityType::Entity>]
          #     Required. The collection of entities to override or supplement the custom
          #     entity type.
          class SessionEntityType
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The types of modifications for the session entity type.
            module EntityOverrideMode
              # Not specified. This value should be never used.
              ENTITY_OVERRIDE_MODE_UNSPECIFIED = 0

              # The collection of session entities overrides the collection of entities
              # in the corresponding custom entity type.
              ENTITY_OVERRIDE_MODE_OVERRIDE = 1

              # The collection of session entities extends the collection of entities in
              # the corresponding custom entity type.
              #
              # Note: Even in this override mode calls to `ListSessionEntityTypes`,
              # `GetSessionEntityType`, `CreateSessionEntityType` and
              # `UpdateSessionEntityType` only return the additional entities added in
              # this session entity type. If you want to get the supplemented list,
              # please call
              # {::Google::Cloud::Dialogflow::CX::V3::EntityTypes::Client#get_entity_type EntityTypes.GetEntityType}
              # on the custom entity type and merge.
              ENTITY_OVERRIDE_MODE_SUPPLEMENT = 2
            end
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#list_session_entity_types SessionEntityTypes.ListSessionEntityTypes}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The session to list all session entity types from.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>`.
          #     If `Environment ID` is not specified, we assume default 'draft'
          #     environment.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 100 and
          #     at most 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListSessionEntityTypesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#list_session_entity_types SessionEntityTypes.ListSessionEntityTypes}.
          # @!attribute [rw] session_entity_types
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::SessionEntityType>]
          #     The list of session entity types. There will be a maximum number of items
          #     returned based on the page_size field in the request.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no
          #     more results in the list.
          class ListSessionEntityTypesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#get_session_entity_type SessionEntityTypes.GetSessionEntityType}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the session entity type.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`.
          #     If `Environment ID` is not specified, we assume default 'draft'
          #     environment.
          class GetSessionEntityTypeRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#create_session_entity_type SessionEntityTypes.CreateSessionEntityType}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The session to create a session entity type for.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>`.
          #     If `Environment ID` is not specified, we assume default 'draft'
          #     environment.
          # @!attribute [rw] session_entity_type
          #   @return [::Google::Cloud::Dialogflow::CX::V3::SessionEntityType]
          #     Required. The session entity type to create.
          class CreateSessionEntityTypeRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#update_session_entity_type SessionEntityTypes.UpdateSessionEntityType}.
          # @!attribute [rw] session_entity_type
          #   @return [::Google::Cloud::Dialogflow::CX::V3::SessionEntityType]
          #     Required. The session entity type to update.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`.
          #     If `Environment ID` is not specified,
          #     we assume default 'draft' environment.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     The mask to control which fields get updated.
          class UpdateSessionEntityTypeRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client#delete_session_entity_type SessionEntityTypes.DeleteSessionEntityType}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the session entity type to delete.
          #     Format:
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`
          #     or
          #     `projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/environments/<EnvironmentID>/sessions/<SessionID>/entityTypes/<EntityTypeID>`.
          #     If `Environment ID` is not specified,
          #     we assume default 'draft' environment.
          class DeleteSessionEntityTypeRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
