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
  module Shopping
    module Merchant
      module OrderTracking
        module V1beta
          # Signals only can be created but not updated.
          # Businesses need to call this API only when the order is completely shipped.
          # Creates new order signal.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account of the business for which the order signal is
          #     created. Format: accounts/\\{account}
          # @!attribute [r] order_tracking_signal_id
          #   @return [::String]
          #     Output only. The ID that uniquely identifies this order tracking signal.
          # @!attribute [rw] order_tracking_signal
          #   @return [::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal]
          #     Required. The order signal to be created.
          class CreateOrderTrackingSignalRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a business trade from which signals are extracted, such as
          # shipping.
          # @!attribute [r] order_tracking_signal_id
          #   @return [::Integer]
          #     Output only. The ID that uniquely identifies this order tracking signal.
          # @!attribute [rw] merchant_id
          #   @return [::Integer]
          #     Optional. The Google Merchant Center ID of this order tracking signal. This
          #     value is optional. If left unset, the caller's Merchant Center ID is used.
          #     You must request access in order to provide data on behalf of another
          #     business. For more information, see [Submitting Order Tracking
          #     Signals](/shopping-content/guides/order-tracking-signals).
          # @!attribute [rw] order_created_time
          #   @return [::Google::Type::DateTime]
          #     Required. The time when the order was created on the businesses side.
          #     Include the year and timezone string, if available.
          # @!attribute [rw] order_id
          #   @return [::String]
          #     Required. The ID of the order on the businesses side. This field will be
          #     hashed in returned OrderTrackingSignal creation response.
          # @!attribute [rw] shipping_info
          #   @return [::Array<::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal::ShippingInfo>]
          #     Required. The shipping information for the order.
          # @!attribute [rw] line_items
          #   @return [::Array<::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal::LineItemDetails>]
          #     Required. Information about line items in the order.
          # @!attribute [rw] shipment_line_item_mapping
          #   @return [::Array<::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal::ShipmentLineItemMapping>]
          #     Optional. The mapping of the line items to the shipment information.
          # @!attribute [rw] customer_shipping_fee
          #   @return [::Google::Shopping::Type::Price]
          #     Optional. The shipping fee of the order;
          #     this value should be set to zero in the case of free shipping.
          # @!attribute [rw] delivery_postal_code
          #   @return [::String]
          #     Optional. The delivery postal code, as a continuous string without spaces
          #     or dashes, for example "95016". This field will be anonymized in returned
          #     OrderTrackingSignal creation response.
          # @!attribute [rw] delivery_region_code
          #   @return [::String]
          #     Optional. The [CLDR territory code]
          #     (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for
          #     the shipping destination.
          class OrderTrackingSignal
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The shipping information for the order.
            # @!attribute [rw] shipment_id
            #   @return [::String]
            #     Required. The shipment ID. This field will be hashed in returned
            #     OrderTrackingSignal creation response.
            # @!attribute [rw] tracking_id
            #   @return [::String]
            #     Optional. The tracking ID of the shipment. This field is required if one
            #     of the following fields is absent: earliest_delivery_promise_time,
            #     latest_delivery_promise_time, and actual_delivery_time.
            # @!attribute [rw] carrier
            #   @return [::String]
            #     Optional. The name of the shipping carrier for the delivery. This field
            #     is required if one of the following fields is absent:
            #     earliest_delivery_promise_time, latest_delivery_promise_time,
            #     and actual_delivery_time.
            # @!attribute [rw] carrier_service
            #   @return [::String]
            #     Optional. The service type for fulfillment, such as GROUND, FIRST_CLASS,
            #     etc.
            # @!attribute [rw] shipped_time
            #   @return [::Google::Type::DateTime]
            #     Optional. The time when the shipment was shipped.
            #     Include the year and timezone string, if available.
            # @!attribute [rw] earliest_delivery_promise_time
            #   @return [::Google::Type::DateTime]
            #     Optional. The earliest delivery promised time.
            #     Include the year and timezone string, if available.
            #     This field is required, if one of the following fields is absent:
            #     tracking_id or carrier_name.
            # @!attribute [rw] latest_delivery_promise_time
            #   @return [::Google::Type::DateTime]
            #     Optional. The latest delivery promised time.
            #     Include the year and timezone string, if available.
            #     This field is required, if one of the following fields is absent:
            #     tracking_id or carrier_name.
            # @!attribute [rw] actual_delivery_time
            #   @return [::Google::Type::DateTime]
            #     Optional. The time when the shipment was actually delivered.
            #     Include the year and timezone string, if available.
            #     This field is required, if one of the following fields is absent:
            #     tracking_id or carrier_name.
            # @!attribute [rw] shipping_status
            #   @return [::Google::Shopping::Merchant::OrderTracking::V1beta::OrderTrackingSignal::ShippingInfo::ShippingState]
            #     Required. The status of the shipment.
            # @!attribute [rw] origin_postal_code
            #   @return [::String]
            #     Required. The origin postal code, as a continuous string without spaces
            #     or dashes, for example "95016". This field will be anonymized in returned
            #     OrderTrackingSignal creation response.
            # @!attribute [rw] origin_region_code
            #   @return [::String]
            #     Required. The [CLDR territory code]
            #     (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for
            #     the shipping origin.
            class ShippingInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The current status of the shipments.
              module ShippingState
                # The shipping status is not known to business.
                SHIPPING_STATE_UNSPECIFIED = 0

                # All items are shipped.
                SHIPPED = 1

                # The shipment is already delivered.
                DELIVERED = 2
              end
            end

            # The line items of the order.
            # @!attribute [rw] line_item_id
            #   @return [::String]
            #     Required. The ID for this line item.
            # @!attribute [rw] product_id
            #   @return [::String]
            #     Required. The Content API REST ID of the product, in the
            #     form channel:contentLanguage:targetCountry:offerId.
            # @!attribute [rw] gtin
            #   @return [::String]
            #     Optional. The Global Trade Item Number.
            # @!attribute [rw] mpn
            #   @return [::String]
            #     Optional. The manufacturer part number.
            # @!attribute [rw] product_title
            #   @return [::String]
            #     Optional. Plain text title of this product.
            # @!attribute [rw] brand
            #   @return [::String]
            #     Optional. Brand of the product.
            # @!attribute [rw] quantity
            #   @return [::Integer]
            #     Required. The quantity of the line item in the order.
            class LineItemDetails
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Represents how many items are in the shipment for the given shipment_id
            # and line_item_id.
            # @!attribute [rw] shipment_id
            #   @return [::String]
            #     Required. The shipment ID. This field will be hashed in returned
            #     OrderTrackingSignal creation response.
            # @!attribute [rw] line_item_id
            #   @return [::String]
            #     Required. The line item ID.
            # @!attribute [rw] quantity
            #   @return [::Integer]
            #     Required. The line item quantity in the shipment.
            class ShipmentLineItemMapping
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
