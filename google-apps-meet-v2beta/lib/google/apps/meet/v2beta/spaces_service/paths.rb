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
  module Apps
    module Meet
      module V2beta
        module SpacesService
          # Path helper methods for the SpacesService API.
          module Paths
            ##
            # Create a fully-qualified ConferenceRecord resource string.
            #
            # The resource will be in the following format:
            #
            # `conferenceRecords/{conference_record}`
            #
            # @param conference_record [String]
            #
            # @return [::String]
            def conference_record_path conference_record:
              "conferenceRecords/#{conference_record}"
            end

            ##
            # Create a fully-qualified Member resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}/members/{member}`
            #
            # @param space [String]
            # @param member [String]
            #
            # @return [::String]
            def member_path space:, member:
              raise ::ArgumentError, "space cannot contain /" if space.to_s.include? "/"

              "spaces/#{space}/members/#{member}"
            end

            ##
            # Create a fully-qualified Space resource string.
            #
            # The resource will be in the following format:
            #
            # `spaces/{space}`
            #
            # @param space [String]
            #
            # @return [::String]
            def space_path space:
              "spaces/#{space}"
            end

            extend self
          end
        end
      end
    end
  end
end
