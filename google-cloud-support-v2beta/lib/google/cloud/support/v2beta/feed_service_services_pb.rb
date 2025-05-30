# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/support/v2beta/feed_service.proto for package 'Google.Cloud.Support.V2beta'
# Original file comments:
# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/support/v2beta/feed_service_pb'

module Google
  module Cloud
    module Support
      module V2beta
        module FeedService
          # A service to view case feed items.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.support.v2beta.FeedService'

            # Show items in the feed of this case, including case emails,
            # attachments, and comments.
            rpc :ShowFeed, ::Google::Cloud::Support::V2beta::ShowFeedRequest, ::Google::Cloud::Support::V2beta::ShowFeedResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
