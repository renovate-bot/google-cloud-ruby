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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/storage/control/v2/version"

require "google/cloud/storage/control/v2/storage_control/credentials"
require "google/cloud/storage/control/v2/storage_control/paths"
require "google/cloud/storage/control/v2/storage_control/operations"
require "google/cloud/storage/control/v2/storage_control/client"
require "google/cloud/storage/control/v2/storage_control/rest"

module Google
  module Cloud
    module Storage
      module Control
        module V2
          ##
          # StorageControl service includes selected control plane operations.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/storage/control/v2/storage_control"
          #     client = ::Google::Cloud::Storage::Control::V2::StorageControl::Client.new
          #
          # @example Load this service and instantiate a REST client
          #
          #     require "google/cloud/storage/control/v2/storage_control/rest"
          #     client = ::Google::Cloud::Storage::Control::V2::StorageControl::Rest::Client.new
          #
          module StorageControl
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "storage_control", "helpers.rb"
require "google/cloud/storage/control/v2/storage_control/helpers" if ::File.file? helper_path
