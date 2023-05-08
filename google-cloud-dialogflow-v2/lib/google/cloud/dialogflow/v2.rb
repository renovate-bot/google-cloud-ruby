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

require "google/cloud/dialogflow/v2/agents"
require "google/cloud/dialogflow/v2/contexts"
require "google/cloud/dialogflow/v2/intents"
require "google/cloud/dialogflow/v2/entity_types"
require "google/cloud/dialogflow/v2/session_entity_types"
require "google/cloud/dialogflow/v2/sessions"
require "google/cloud/dialogflow/v2/participants"
require "google/cloud/dialogflow/v2/answer_records"
require "google/cloud/dialogflow/v2/conversation_profiles"
require "google/cloud/dialogflow/v2/conversations"
require "google/cloud/dialogflow/v2/conversation_datasets"
require "google/cloud/dialogflow/v2/conversation_models"
require "google/cloud/dialogflow/v2/documents"
require "google/cloud/dialogflow/v2/fulfillments"
require "google/cloud/dialogflow/v2/environments"
require "google/cloud/dialogflow/v2/knowledge_bases"
require "google/cloud/dialogflow/v2/versions"
require "google/cloud/dialogflow/v2/version"

module Google
  module Cloud
    module Dialogflow
      ##
      # API client module.
      #
      # @example Load this package, including all its services, and instantiate a gRPC client
      #
      #     require "google/cloud/dialogflow/v2"
      #     client = ::Google::Cloud::Dialogflow::V2::Agents::Client.new
      #
      # @example Load this package, including all its services, and instantiate a REST client
      #
      #     require "google/cloud/dialogflow/v2"
      #     client = ::Google::Cloud::Dialogflow::V2::Agents::Rest::Client.new
      #
      module V2
      end
    end
  end
end

helper_path = ::File.join __dir__, "v2", "_helpers.rb"
require "google/cloud/dialogflow/v2/_helpers" if ::File.file? helper_path
