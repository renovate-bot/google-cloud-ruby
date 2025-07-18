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


module Google
  module Shopping
    module Merchant
      module Products
        module V1beta
          # This resource represents input data you submit for a product, not the
          #  processed product that you see in Merchant Center, in Shopping ads, or
          #  across Google surfaces. Product inputs, rules and supplemental data source
          #  data are combined to create the processed
          #  {::Google::Shopping::Merchant::Products::V1beta::Product Product}. For more
          #  information, see [Manage products](/merchant/api/guides/products/overview).
          #
          #  Required product input attributes to pass data validation checks are
          #  primarily defined in the [Products Data
          #  Specification](https://support.google.com/merchants/answer/188494).
          #
          #  The following attributes are required:
          #  {::Google::Shopping::Merchant::Products::V1beta::Product#feed_label feedLabel},
          #  {::Google::Shopping::Merchant::Products::V1beta::Product#content_language contentLanguage}
          #  and {::Google::Shopping::Merchant::Products::V1beta::Product#offer_id offerId}.
          #
          #  After inserting, updating, or deleting a product input, it may take several
          #  minutes before the processed product can be retrieved.
          #
          #  All fields in the product input and its sub-messages match the English name
          #  of their corresponding attribute in the [Products Data
          #  Specification](https://support.google.com/merchants/answer/188494) with
          #  [some exceptions](https://support.google.com/merchants/answer/7052112).
          #  The following reference documentation lists the field names in the
          #  **camelCase** casing style while the Products Data Specification lists the
          #  names in the **snake_case** casing style.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The name of the product input.
          #     Format: `accounts/{account}/productInputs/{productinput}`
          #     where the last section `productinput` consists of 4 parts:
          #     `channel~content_language~feed_label~offer_id`
          #     example for product input name is
          #     `accounts/123/productInputs/online~en~US~sku123`
          # @!attribute [r] product
          #   @return [::String]
          #     Output only. The name of the processed product.
          #     Format: `accounts/{account}/products/{product}`
          # @!attribute [rw] channel
          #   @return [::Google::Shopping::Type::Channel::ChannelEnum]
          #     Immutable. The
          #     [channel](https://support.google.com/merchants/answer/7361332) of the
          #     product.
          # @!attribute [rw] offer_id
          #   @return [::String]
          #     Required. Immutable. Your unique identifier for the product. This is the
          #     same for the product input and processed product. Leading and trailing
          #     whitespaces are stripped and multiple whitespaces are replaced by a single
          #     whitespace upon submission. See the [products data
          #     specification](https://support.google.com/merchants/answer/188494#id) for
          #     details.
          # @!attribute [rw] content_language
          #   @return [::String]
          #     Required. Immutable. The two-letter [ISO
          #     639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code for the
          #     product.
          # @!attribute [rw] feed_label
          #   @return [::String]
          #     Required. Immutable. The label that lets you categorize and identify your
          #     products. The maximum allowed characters are 20, and the supported
          #     characters are `A-Z`, `0-9`, hyphen, and underscore. The feed label must
          #     not include any spaces. For more information, see [Using feed
          #     labels](//support.google.com/merchants/answer/14994087).
          # @!attribute [rw] version_number
          #   @return [::Integer]
          #     Optional. Immutable. Represents the existing version (freshness) of the
          #     product, which can be used to preserve the right order when multiple
          #     updates are done at the same time.
          #
          #     If set, the insertion is prevented when version number is lower than
          #     the current version number of the existing product. Re-insertion (for
          #     example, product refresh after 30 days) can be performed with the current
          #     `version_number`.
          #
          #     Only supported for insertions into primary data sources.
          #     Do not set this field for updates.
          #     Do not set this field for insertions into supplemental data sources.
          #
          #     If the operation is prevented, the aborted exception will be
          #     thrown.
          # @!attribute [rw] attributes
          #   @return [::Google::Shopping::Merchant::Products::V1beta::Attributes]
          #     Optional. A list of product attributes.
          # @!attribute [rw] custom_attributes
          #   @return [::Array<::Google::Shopping::Type::CustomAttribute>]
          #     Optional. A list of custom (merchant-provided) attributes. It can also be
          #     used for submitting any attribute of the data specification in its generic
          #     form (for example,
          #     `{ "name": "size type", "value": "regular" }`).
          #     This is useful for submitting attributes not explicitly exposed by the
          #     API.
          #     Maximum allowed number of characters for each
          #     custom attribute is 10240 (represents sum of characters for name and
          #     value). Maximum 2500 custom attributes can be set per product, with total
          #     size of 102.4kB. Underscores in custom attribute names are replaced by
          #     spaces upon insertion.
          class ProductInput
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the InsertProductInput method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account where this product will be inserted.
          #     Format: `accounts/{account}`
          # @!attribute [rw] product_input
          #   @return [::Google::Shopping::Merchant::Products::V1beta::ProductInput]
          #     Required. The product input to insert.
          # @!attribute [rw] data_source
          #   @return [::String]
          #     Required. The primary or supplemental product data source name. If the
          #     product already exists and data source provided is different, then the
          #     product will be moved to a new data source. For more information, see
          #     [Overview of Data sources
          #     sub-API](/merchant/api/guides/data-sources/overview).
          #
          #     Only API data sources are supported.
          #
          #     Format: `accounts/{account}/dataSources/{datasource}`. For example,
          #     `accounts/123456/dataSources/104628`.
          class InsertProductInputRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the UpdateProductInput method.
          # The product (primary input) must exist for the update to succeed.
          # If the update is for a primary product input, the existing primary product
          # input must be from the same data source.
          # @!attribute [rw] product_input
          #   @return [::Google::Shopping::Merchant::Products::V1beta::ProductInput]
          #     Required. The product input resource to update. Information you submit will
          #     be applied to the processed product as well.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Optional. The list of product attributes to be updated.
          #
          #     If the update mask is omitted, then it is treated as implied field mask
          #     equivalent to all fields that are populated (have a non-empty value).
          #
          #     Attributes specified in the update mask without a value specified in the
          #     body will be deleted from the product.
          #
          #     Update mask can only be specified for top level fields in
          #     attributes and custom attributes.
          #
          #     To specify the update mask for custom attributes you need to add the
          #     `custom_attribute.` prefix.
          #
          #     Providing special "*" value for full product replacement is not supported.
          # @!attribute [rw] data_source
          #   @return [::String]
          #     Required. The primary or supplemental product data source where
          #     `data_source` name identifies the product input to be updated.
          #
          #     Only API data sources are supported.
          #
          #     Format: `accounts/{account}/dataSources/{datasource}`. For example,
          #     `accounts/123456/dataSources/104628`.
          class UpdateProductInputRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the DeleteProductInput method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the product input resource to delete.
          #     Format: `accounts/{account}/productInputs/{product}`
          #     where the last section `product` consists of 4 parts:
          #     `channel~content_language~feed_label~offer_id`
          #     example for product name is
          #     `accounts/123/productInputs/online~en~US~sku123`.
          # @!attribute [rw] data_source
          #   @return [::String]
          #     Required. The primary or supplemental data source from which the product
          #     input should be deleted. Format:
          #     `accounts/{account}/dataSources/{datasource}`. For example,
          #     `accounts/123456/dataSources/104628`.
          class DeleteProductInputRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
