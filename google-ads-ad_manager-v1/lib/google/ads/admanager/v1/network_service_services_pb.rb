# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/ads/admanager/v1/network_service.proto for package 'Google.Ads.AdManager.V1'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/ads/admanager/v1/network_service_pb'

module Google
  module Ads
    module AdManager
      module V1
        module NetworkService
          # Provides methods for handling `Network` objects.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.ads.admanager.v1.NetworkService'

            # API to retrieve a Network object.
            rpc :GetNetwork, ::Google::Ads::AdManager::V1::GetNetworkRequest, ::Google::Ads::AdManager::V1::Network
            # API to retrieve all the networks the current user has access to.
            rpc :ListNetworks, ::Google::Ads::AdManager::V1::ListNetworksRequest, ::Google::Ads::AdManager::V1::ListNetworksResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
