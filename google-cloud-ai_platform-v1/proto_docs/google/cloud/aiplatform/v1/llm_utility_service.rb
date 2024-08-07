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
    module AIPlatform
      module V1
        # Request message for ComputeTokens RPC call.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to get lists of tokens and
        #     token ids.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Optional. The instances that are the input to token computing API call.
        #     Schema is identical to the prediction schema of the text model, even for
        #     the non-text models, like chat models, or Codey models.
        # @!attribute [rw] model
        #   @return [::String]
        #     Optional. The name of the publisher model requested to serve the
        #     prediction. Format:
        #     projects/\\{project}/locations/\\{location}/publishers/*/models/*
        # @!attribute [rw] contents
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Content>]
        #     Optional. Input content.
        class ComputeTokensRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Tokens info with a list of tokens and the corresponding list of token ids.
        # @!attribute [rw] tokens
        #   @return [::Array<::String>]
        #     A list of tokens from the input.
        # @!attribute [rw] token_ids
        #   @return [::Array<::Integer>]
        #     A list of token ids from the input.
        # @!attribute [rw] role
        #   @return [::String]
        #     Optional. Optional fields for the role from the corresponding Content.
        class TokensInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ComputeTokens RPC call.
        # @!attribute [rw] tokens_info
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::TokensInfo>]
        #     Lists of tokens info from the input. A ComputeTokensRequest could have
        #     multiple instances with a prompt in each instance. We also need to return
        #     lists of tokens info for the request with multiple instances.
        class ComputeTokensResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
