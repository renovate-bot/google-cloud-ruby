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

# [START merchantapi_v1beta_generated_LocalInventoryService_ListLocalInventories_sync]
require "google/shopping/merchant/inventories/v1beta"

##
# Snippet for the list_local_inventories call in the LocalInventoryService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Shopping::Merchant::Inventories::V1beta::LocalInventoryService::Client#list_local_inventories.
# It may require modification in order to execute successfully.
#
def list_local_inventories
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Shopping::Merchant::Inventories::V1beta::LocalInventoryService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Shopping::Merchant::Inventories::V1beta::ListLocalInventoriesRequest.new

  # Call the list_local_inventories method.
  result = client.list_local_inventories request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Shopping::Merchant::Inventories::V1beta::LocalInventory.
    p item
  end
end
# [END merchantapi_v1beta_generated_LocalInventoryService_ListLocalInventories_sync]