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
  module Cloud
    module GDCHardwareManagement
      module V1alpha
        # An order for GDC hardware.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this order.
        #     Format: `projects/{project}/locations/{location}/orders/{order}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name of this order.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this order was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this order was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this order as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [r] state
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Order::State]
        #     Output only. State of this order. On order creation, state will be set to
        #     DRAFT.
        # @!attribute [rw] organization_contact
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::OrganizationContact]
        #     Required. Customer contact information.
        # @!attribute [rw] target_workloads
        #   @return [::Array<::String>]
        #     Optional. Customer specified workloads of interest targeted by this order.
        #     This must contain <= 20 elements and the length of each element must be <=
        #     50 characters.
        # @!attribute [rw] customer_motivation
        #   @return [::String]
        #     Required. Information about the customer's motivation for this order. The
        #     length of this field must be <= 1000 characters.
        # @!attribute [rw] fulfillment_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. Customer specified deadline by when this order should be
        #     fulfilled.
        # @!attribute [rw] region_code
        #   @return [::String]
        #     Required. [Unicode CLDR](http://cldr.unicode.org/) region code where this
        #     order will be deployed. For a list of valid CLDR region codes, see the
        #     [Language Subtag
        #     Registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).
        # @!attribute [r] order_form_uri
        #   @return [::String]
        #     Output only. Link to the order form.
        # @!attribute [r] type
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Order::Type]
        #     Output only. Type of this Order.
        # @!attribute [r] submit_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the order was submitted. Is auto-populated to the
        #     current time when an order is submitted.
        # @!attribute [rw] billing_id
        #   @return [::String]
        #     Required. The Google Cloud Billing ID to be charged for this order.
        # @!attribute [rw] existing_hardware
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareLocation>]
        #     Optional. Existing hardware to be removed as part of this order.
        #     Note: any hardware removed will be recycled unless otherwise agreed.
        class Order
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Valid states of an order.
          module State
            # State of the order is unspecified.
            STATE_UNSPECIFIED = 0

            # Order is being drafted by the customer and has not been submitted yet.
            DRAFT = 1

            # Order has been submitted to Google.
            SUBMITTED = 2

            # Order has been accepted by Google.
            ACCEPTED = 3

            # Order needs more information from the customer.
            ADDITIONAL_INFO_NEEDED = 4

            # Google has initiated building hardware for the order.
            BUILDING = 5

            # The hardware has been built and is being shipped.
            SHIPPING = 6

            # The hardware is being installed.
            INSTALLING = 7

            # An error occurred in processing the order and customer intervention is
            # required.
            FAILED = 8

            # Order has been partially completed i.e., some hardware have been
            # delivered and installed.
            PARTIALLY_COMPLETED = 9

            # Order has been completed.
            COMPLETED = 10

            # Order has been cancelled.
            CANCELLED = 11
          end

          # Valid types of an Order.
          module Type
            # Type of the order is unspecified.
            TYPE_UNSPECIFIED = 0

            # Paid by the customer.
            PAID = 1

            # Proof of concept for the customer.
            POC = 2
          end
        end

        # A physical site where hardware will be installed.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the site.
        #     Format: `projects/{project}/locations/{location}/sites/{site}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name of this Site.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of this Site.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this site was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this site was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this site as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [rw] organization_contact
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::OrganizationContact]
        #     Required. Contact information for this site.
        # @!attribute [rw] google_maps_pin_uri
        #   @return [::String]
        #     Required. A URL to the Google Maps address location of the site.
        #     An example value is `https://goo.gl/maps/xxxxxxxxx`.
        # @!attribute [rw] access_times
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::TimePeriod>]
        #     Optional. The time periods when the site is accessible.
        #     If this field is empty, the site is accessible at all times.
        # @!attribute [rw] notes
        #   @return [::String]
        #     Optional. Any additional notes for this Site. Please include information
        #     about:
        #      - security or access restrictions
        #      - any regulations affecting the technicians visiting the site
        #      - any special process or approval required to move the equipment
        #      - whether a representative will be available during site visits
        class Site
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A group of hardware that is part of the same order, has the same SKU, and is
        # delivered to the same site.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this hardware group.
        #     Format:
        #     `projects/{project}/locations/{location}/orders/{order}/hardwareGroups/{hardware_group}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this hardware group was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this hardware group was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this hardware group as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [rw] hardware_count
        #   @return [::Integer]
        #     Required. Number of hardware in this HardwareGroup.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareConfig]
        #     Required. Configuration for hardware in this HardwareGroup.
        # @!attribute [rw] site
        #   @return [::String]
        #     Required. Name of the site where the hardware in this HardwareGroup will be
        #     delivered.
        #     Format: `projects/{project}/locations/{location}/sites/{site}`
        # @!attribute [r] state
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareGroup::State]
        #     Output only. Current state of this HardwareGroup.
        # @!attribute [rw] zone
        #   @return [::String]
        #     Optional. Name of the zone that the hardware in this HardwareGroup belongs
        #     to. Format: `projects/{project}/locations/{location}/zones/{zone}`
        # @!attribute [rw] requested_installation_date
        #   @return [::Google::Type::Date]
        #     Optional. Requested installation date for the hardware in this
        #     HardwareGroup. Filled in by the customer.
        class HardwareGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Valid states of a HardwareGroup.
          module State
            # State of the HardwareGroup is unspecified.
            STATE_UNSPECIFIED = 0

            # More information is required from the customer to make progress.
            ADDITIONAL_INFO_NEEDED = 1

            # Google has initiated building hardware for this HardwareGroup.
            BUILDING = 2

            # The hardware has been built and is being shipped.
            SHIPPING = 3

            # The hardware is being installed.
            INSTALLING = 4

            # Some hardware in the HardwareGroup have been installed.
            PARTIALLY_INSTALLED = 5

            # All hardware in the HardwareGroup have been installed.
            INSTALLED = 6

            # An error occurred and customer intervention is required.
            FAILED = 7
          end
        end

        # An instance of hardware installed at a site.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this hardware.
        #     Format: `projects/{project}/locations/{location}/hardware/{hardware}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name for this hardware.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this hardware was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this hardware was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this hardware as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [rw] order
        #   @return [::String]
        #     Required. Name of the order that this hardware belongs to.
        #     Format: `projects/{project}/locations/{location}/orders/{order}`
        # @!attribute [r] hardware_group
        #   @return [::String]
        #     Output only. Name for the hardware group that this hardware belongs to.
        #     Format:
        #     `projects/{project}/locations/{location}/orders/{order}/hardwareGroups/{hardware_group}`
        # @!attribute [rw] site
        #   @return [::String]
        #     Required. Name for the site that this hardware belongs to.
        #     Format: `projects/{project}/locations/{location}/sites/{site}`
        # @!attribute [r] state
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Hardware::State]
        #     Output only. Current state for this hardware.
        # @!attribute [r] ciq_uri
        #   @return [::String]
        #     Output only. Link to the Customer Intake Questionnaire (CIQ) sheet for this
        #     Hardware.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareConfig]
        #     Required. Configuration for this hardware.
        # @!attribute [r] estimated_installation_date
        #   @return [::Google::Type::Date]
        #     Output only. Estimated installation date for this hardware.
        # @!attribute [rw] physical_info
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwarePhysicalInfo]
        #     Optional. Physical properties of this hardware.
        # @!attribute [rw] installation_info
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareInstallationInfo]
        #     Optional. Information for installation of this hardware.
        # @!attribute [rw] zone
        #   @return [::String]
        #     Required. Name for the zone that this hardware belongs to.
        #     Format: `projects/{project}/locations/{location}/zones/{zone}`
        # @!attribute [rw] requested_installation_date
        #   @return [::Google::Type::Date]
        #     Optional. Requested installation date for this hardware. This is
        #     auto-populated when the order is accepted, if the hardware's HardwareGroup
        #     specifies this. It can also be filled in by the customer.
        # @!attribute [r] actual_installation_date
        #   @return [::Google::Type::Date]
        #     Output only. Actual installation date for this hardware. Filled in by
        #     Google.
        class Hardware
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Valid states for hardware.
          module State
            # State of the Hardware is unspecified.
            STATE_UNSPECIFIED = 0

            # More information is required from the customer to make progress.
            ADDITIONAL_INFO_NEEDED = 1

            # Google has initiated building hardware for this Hardware.
            BUILDING = 2

            # The hardware has been built and is being shipped.
            SHIPPING = 3

            # The hardware is being installed.
            INSTALLING = 4

            # The hardware has been installed.
            INSTALLED = 5

            # An error occurred and customer intervention is required.
            FAILED = 6
          end
        end

        # A comment on an order.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this comment.
        #     Format:
        #     `projects/{project}/locations/{location}/orders/{order}/comments/{comment}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this comment was created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this comment as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [r] author
        #   @return [::String]
        #     Output only. Username of the author of this comment. This is auto-populated
        #     from the credentials used during creation of the comment.
        # @!attribute [rw] text
        #   @return [::String]
        #     Required. Text of this comment. The length of text must be <= 1000
        #     characters.
        class Comment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A log entry of a change made to an order.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this change log entry.
        #     Format:
        #     `projects/{project}/locations/{location}/orders/{order}/changeLogEntries/{change_log_entry}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this change log entry was created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this change log entry as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [r] log
        #   @return [::String]
        #     Output only. Content of this log entry.
        class ChangeLogEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A stock keeping unit (SKU) of GDC hardware.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this SKU.
        #     Format: `projects/{project}/locations/{location}/skus/{sku}`
        # @!attribute [r] display_name
        #   @return [::String]
        #     Output only. Display name of this SKU.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this SKU was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this SKU was last updated.
        # @!attribute [r] config
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::SkuConfig]
        #     Output only. Configuration for this SKU.
        # @!attribute [r] instances
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::SkuInstance>]
        #     Output only. Available instances of this SKU. This field should be used for
        #     checking availability of a SKU.
        # @!attribute [r] description
        #   @return [::String]
        #     Output only. Description of this SKU.
        # @!attribute [r] revision_id
        #   @return [::String]
        #     Output only. The SKU revision ID.
        #     A new revision is created whenever `config` is updated. The format is an
        #     8-character hexadecimal string.
        # @!attribute [r] is_active
        #   @return [::Boolean]
        #     Output only. Flag to indicate whether or not this revision is active. Only
        #     an active revision can be used in a new Order.
        # @!attribute [r] type
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Sku::Type]
        #     Output only. Type of this SKU.
        # @!attribute [r] vcpu_count
        #   @return [::Integer]
        #     Output only. The vCPU count associated with this SKU.
        class Sku
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Valid types of a SKU.
          module Type
            # Type of the SKU is unspecified. This is not an allowed value.
            TYPE_UNSPECIFIED = 0

            # Rack SKU.
            RACK = 1

            # Server SKU.
            SERVER = 2
          end
        end

        # A zone holding a set of hardware.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of this zone.
        #     Format: `projects/{project}/locations/{location}/zones/{zone}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this zone was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this zone was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels associated with this zone as key value pairs.
        #     For more information about labels, see [Create and manage
        #     labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Human friendly display name of this zone.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Zone::State]
        #     Output only. Current state for this zone.
        # @!attribute [rw] contacts
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::Contact>]
        #     Required. The points of contact.
        # @!attribute [r] ciq_uri
        #   @return [::String]
        #     Output only. Link to the Customer Intake Questionnaire (CIQ) sheet for this
        #     zone.
        # @!attribute [rw] network_config
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::ZoneNetworkConfig]
        #     Optional. Networking configuration for this zone.
        # @!attribute [r] globally_unique_id
        #   @return [::String]
        #     Output only. Globally unique identifier generated for this Edge Zone.
        class Zone
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Valid states for a zone.
          module State
            # State of the Zone is unspecified.
            STATE_UNSPECIFIED = 0

            # More information is required from the customer to make progress.
            ADDITIONAL_INFO_NEEDED = 1

            # Google is preparing the Zone.
            PREPARING = 2

            # Factory turnup has succeeded.
            READY_FOR_CUSTOMER_FACTORY_TURNUP_CHECKS = 5

            # The Zone is ready for site turnup.
            READY_FOR_SITE_TURNUP = 6

            # The Zone failed in factory turnup checks.
            CUSTOMER_FACTORY_TURNUP_CHECKS_FAILED = 7

            # The Zone is available to use.
            ACTIVE = 3

            # The Zone has been cancelled.
            CANCELLED = 4
          end
        end

        # Contact information of the customer organization.
        # @!attribute [rw] address
        #   @return [::Google::Type::PostalAddress]
        #     Required. The organization's address.
        # @!attribute [rw] email
        #   @return [::String]
        #     Optional. The organization's email.
        # @!attribute [rw] phone
        #   @return [::String]
        #     Optional. The organization's phone number.
        # @!attribute [rw] contacts
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::Contact>]
        #     Required. The individual points of contact in the organization at this
        #     location.
        class OrganizationContact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Contact details of a point of contact.
        # @!attribute [rw] given_name
        #   @return [::String]
        #     Required. Given name of the contact.
        # @!attribute [rw] family_name
        #   @return [::String]
        #     Optional. Family name of the contact.
        # @!attribute [rw] email
        #   @return [::String]
        #     Required. Email of the contact.
        # @!attribute [rw] phone
        #   @return [::String]
        #     Required. Phone number of the contact.
        # @!attribute [rw] time_zone
        #   @return [::Google::Type::TimeZone]
        #     Optional. Time zone of the contact.
        # @!attribute [rw] reachable_times
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::TimePeriod>]
        #     Optional. The time periods when the contact is reachable.
        #     If this field is empty, the contact is reachable at all times.
        class Contact
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for GDC hardware.
        # @!attribute [rw] sku
        #   @return [::String]
        #     Required. Reference to the SKU for this hardware. This can point to a
        #     specific SKU revision in the form of `resource_name@revision_id` as defined
        #     in [AIP-162](https://google.aip.dev/162). If no revision_id is specified,
        #     it refers to the latest revision.
        # @!attribute [rw] power_supply
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::PowerSupply]
        #     Required. Power supply type for this hardware.
        # @!attribute [rw] subscription_duration_months
        #   @return [::Integer]
        #     Optional. Subscription duration for the hardware in months.
        class HardwareConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration for a SKU.
        # @!attribute [rw] cpu
        #   @return [::String]
        #     Information about CPU configuration.
        # @!attribute [rw] gpu
        #   @return [::String]
        #     Information about GPU configuration.
        # @!attribute [rw] ram
        #   @return [::String]
        #     Information about RAM configuration.
        # @!attribute [rw] storage
        #   @return [::String]
        #     Information about storage configuration.
        class SkuConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A specific instance of the SKU.
        # @!attribute [rw] region_code
        #   @return [::String]
        #     The [Unicode CLDR](https://cldr.unicode.org) region code where this
        #     instance is available.
        # @!attribute [rw] power_supply
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::PowerSupply]
        #     Power supply type for this instance.
        # @!attribute [rw] billing_sku
        #   @return [::String]
        #     Reference to the corresponding SKU in the Cloud Billing API.
        #     The estimated price information can be retrieved using that API.
        #     Format: `services/{service}/skus/{sku}`
        # @!attribute [rw] billing_sku_per_vcpu
        #   @return [::String]
        #     Reference to the corresponding SKU per vCPU in the Cloud Billing API.
        #     The estimated price information can be retrieved using that API.
        #     Format: `services/{service}/skus/{sku}`
        # @!attribute [rw] subscription_duration_months
        #   @return [::Integer]
        #     Subscription duration for the hardware in months.
        class SkuInstance
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Physical properties of a hardware.
        # @!attribute [rw] power_receptacle
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwarePhysicalInfo::PowerReceptacleType]
        #     Required. The power receptacle type.
        # @!attribute [rw] network_uplink
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwarePhysicalInfo::NetworkUplinkType]
        #     Required. Type of the uplink network connection.
        # @!attribute [rw] voltage
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwarePhysicalInfo::Voltage]
        #     Required. Voltage of the power supply.
        # @!attribute [rw] amperes
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwarePhysicalInfo::Amperes]
        #     Required. Amperes of the power supply.
        class HardwarePhysicalInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Valid power receptacle types.
          module PowerReceptacleType
            # Facility plug type is unspecified.
            POWER_RECEPTACLE_TYPE_UNSPECIFIED = 0

            # NEMA 5-15.
            NEMA_5_15 = 1

            # C13.
            C_13 = 2

            # Standard european receptacle.
            STANDARD_EU = 3
          end

          # Valid network uplink types.
          module NetworkUplinkType
            # Network uplink type is unspecified.
            NETWORK_UPLINK_TYPE_UNSPECIFIED = 0

            # RJ-45.
            RJ_45 = 1
          end

          # Valid voltage values.
          module Voltage
            # Voltage is unspecified.
            VOLTAGE_UNSPECIFIED = 0

            # 120V.
            VOLTAGE_110 = 1

            # 220V.
            VOLTAGE_220 = 3
          end

          # Valid amperes values.
          module Amperes
            # Amperes is unspecified.
            AMPERES_UNSPECIFIED = 0

            # 15A.
            AMPERES_15 = 1
          end
        end

        # Information for installation of a Hardware.
        # @!attribute [rw] rack_location
        #   @return [::String]
        #     Optional. Location of the rack in the site e.g. Floor 2, Room 201, Row 7,
        #     Rack 3.
        # @!attribute [rw] power_distance_meters
        #   @return [::Integer]
        #     Required. Distance from the power outlet in meters.
        # @!attribute [rw] switch_distance_meters
        #   @return [::Integer]
        #     Required. Distance from the network switch in meters.
        # @!attribute [rw] rack_unit_dimensions
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Dimensions]
        #     Required. Dimensions of the rack unit.
        # @!attribute [rw] rack_space
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::RackSpace]
        #     Required. Rack space allocated for the hardware.
        # @!attribute [rw] rack_type
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareInstallationInfo::RackType]
        #     Required. Type of the rack.
        class HardwareInstallationInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Valid rack types.
          module RackType
            # Rack type is unspecified.
            RACK_TYPE_UNSPECIFIED = 0

            # Two post rack.
            TWO_POST = 1

            # Four post rack.
            FOUR_POST = 2
          end
        end

        # Networking configuration for a zone.
        # @!attribute [rw] machine_mgmt_ipv4_range
        #   @return [::String]
        #     Required. An IPv4 address block for machine management.
        #     Should be a private RFC1918 or public CIDR block large enough to allocate
        #     at least one address per machine in the Zone.
        #     Should be in `management_ipv4_subnet`, and disjoint with other address
        #     ranges.
        # @!attribute [rw] kubernetes_node_ipv4_range
        #   @return [::String]
        #     Required. An IPv4 address block for kubernetes nodes.
        #     Should be a private RFC1918 or public CIDR block large enough to allocate
        #     at least one address per machine in the Zone.
        #     Should be in `kubernetes_ipv4_subnet`, and disjoint with other address
        #     ranges.
        # @!attribute [rw] kubernetes_control_plane_ipv4_range
        #   @return [::String]
        #     Required. An IPv4 address block for kubernetes control plane.
        #     Should be a private RFC1918 or public CIDR block large enough to allocate
        #     at least one address per cluster in the Zone.
        #     Should be in `kubernetes_ipv4_subnet`, and disjoint with other address
        #     ranges.
        # @!attribute [rw] management_ipv4_subnet
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Subnet]
        #     Required. An IPv4 subnet for the management network.
        # @!attribute [rw] kubernetes_ipv4_subnet
        #   @return [::Google::Cloud::GDCHardwareManagement::V1alpha::Subnet]
        #     Optional. An IPv4 subnet for the kubernetes network.
        #     If unspecified, the kubernetes subnet will be the same as the management
        #     subnet.
        class ZoneNetworkConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a subnet.
        # @!attribute [rw] address_range
        #   @return [::String]
        #     Required. Address range for this subnet in CIDR notation.
        # @!attribute [rw] default_gateway_ip_address
        #   @return [::String]
        #     Required. Default gateway for this subnet.
        class Subnet
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a time period in a week.
        # @!attribute [rw] start_time
        #   @return [::Google::Type::TimeOfDay]
        #     Required. The start of the time period.
        # @!attribute [rw] end_time
        #   @return [::Google::Type::TimeOfDay]
        #     Required. The end of the time period.
        # @!attribute [rw] days
        #   @return [::Array<::Google::Type::DayOfWeek>]
        #     Required. The days of the week that the time period is active.
        class TimePeriod
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the dimensions of an object.
        # @!attribute [rw] width_inches
        #   @return [::Float]
        #     Required. Width in inches.
        # @!attribute [rw] height_inches
        #   @return [::Float]
        #     Required. Height in inches.
        # @!attribute [rw] depth_inches
        #   @return [::Float]
        #     Required. Depth in inches.
        class Dimensions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents contiguous space in a rack.
        # @!attribute [rw] start_rack_unit
        #   @return [::Integer]
        #     Required. First rack unit of the rack space (inclusive).
        # @!attribute [rw] end_rack_unit
        #   @return [::Integer]
        #     Required. Last rack unit of the rack space (inclusive).
        class RackSpace
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the location of one or many hardware.
        # @!attribute [rw] site
        #   @return [::String]
        #     Required. Name of the site where the hardware are present.
        #     Format: `projects/{project}/locations/{location}/sites/{site}`
        # @!attribute [rw] rack_location
        #   @return [::String]
        #     Required. Location of the rack in the site e.g. Floor 2, Room 201, Row 7,
        #     Rack 3.
        # @!attribute [rw] rack_space
        #   @return [::Array<::Google::Cloud::GDCHardwareManagement::V1alpha::RackSpace>]
        #     Optional. Spaces occupied by the hardware in the rack.
        #     If unset, this location is assumed to be the entire rack.
        class HardwareLocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The power supply options.
        module PowerSupply
          # Power supply is unspecified.
          POWER_SUPPLY_UNSPECIFIED = 0

          # AC power supply.
          POWER_SUPPLY_AC = 1

          # DC power supply.
          POWER_SUPPLY_DC = 2
        end
      end
    end
  end
end
