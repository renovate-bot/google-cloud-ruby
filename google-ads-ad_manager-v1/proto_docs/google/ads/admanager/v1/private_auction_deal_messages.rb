# frozen_string_literal: true

# Copyright 2025 Google LLC
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
        # The `PrivateAuctionDeal` resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the `PrivateAuctionDeal`.
        #     Format:
        #     `networks/{network_code}/privateAuctionDeals/{private_auction_deal_id}`
        # @!attribute [r] private_auction_deal_id
        #   @return [::Integer]
        #     Output only. `PrivateAuctionDeal` ID.
        # @!attribute [rw] private_auction_id
        #   @return [::Integer]
        #     Immutable. The ID of the
        #     [PrivateAuction](google.ads.admanager.v1.PrivateAuction).
        # @!attribute [r] private_auction_display_name
        #   @return [::String]
        #     Output only. The display name of the
        #     [PrivateAuction](google.ads.admanager.v1.PrivateAuction).
        # @!attribute [rw] buyer_account_id
        #   @return [::Integer]
        #     Immutable. The account ID of the buyer of the `PrivateAuctionDeal`.
        # @!attribute [r] external_deal_id
        #   @return [::Integer]
        #     Output only. The external ID of the `PrivateAuctionDeal`.
        # @!attribute [rw] targeting
        #   @return [::Google::Ads::AdManager::V1::Targeting]
        #     Optional. The targeting of the `PrivateAuctionDeal`.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. The end time of the `PrivateAuctionDeal`.
        # @!attribute [rw] floor_price
        #   @return [::Google::Type::Money]
        #     Required. The floor price of the `PrivateAuctionDeal`.
        # @!attribute [rw] creative_sizes
        #   @return [::Array<::Google::Ads::AdManager::V1::Size>]
        #     Optional. The expected creative sizes of the `PrivateAuctionDeal`.
        # @!attribute [r] status
        #   @return [::Google::Ads::AdManager::V1::PrivateMarketplaceDealStatusEnum::PrivateMarketplaceDealStatus]
        #     Output only. The status of the `PrivateAuctionDeal`.
        # @!attribute [rw] auction_priority_enabled
        #   @return [::Boolean]
        #     Optional. Whether the deal is enabled with priority over open auction.
        # @!attribute [rw] block_override_enabled
        #   @return [::Boolean]
        #     Optional. Whether the deal has block override enabled.
        # @!attribute [rw] buyer_permission_type
        #   @return [::Google::Ads::AdManager::V1::DealBuyerPermissionTypeEnum::DealBuyerPermissionType]
        #     Optional. The buyer permission model defining how the deal would transact
        #     among all buyers under the same bidder.
        # @!attribute [rw] buyer_data
        #   @return [::Google::Ads::AdManager::V1::PrivateAuctionDeal::BuyerData]
        #     Optional. The buyer data required by the Marketplace API.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The instant at which the `PrivateAuctionDeal` was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The instant at which the `PrivateAuctionDeal` was last
        #     updated.
        class PrivateAuctionDeal
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Contains buyer data. This data is required by the Marketplace API.
          # @!attribute [rw] buyer_emails
          #   @return [::Array<::String>]
          #     Optional. The email contacts of the buyer of the `PrivateAuctionDeal`.
          class BuyerData
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
