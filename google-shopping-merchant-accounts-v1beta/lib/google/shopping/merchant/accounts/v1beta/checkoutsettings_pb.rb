# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/accounts/v1beta/checkoutsettings.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/shopping/type/types_pb'


descriptor_data = "\n?google/shopping/merchant/accounts/v1beta/checkoutsettings.proto\x12(google.shopping.merchant.accounts.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a google/shopping/type/types.proto\"_\n\x1aGetCheckoutSettingsRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+merchantapi.googleapis.com/CheckoutSettings\"\xc0\x01\n\x1d\x43reateCheckoutSettingsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+merchantapi.googleapis.com/CheckoutSettings\x12Z\n\x11\x63heckout_settings\x18\x02 \x01(\x0b\x32:.google.shopping.merchant.accounts.v1beta.CheckoutSettingsB\x03\xe0\x41\x02\"\xb1\x01\n\x1dUpdateCheckoutSettingsRequest\x12Z\n\x11\x63heckout_settings\x18\x01 \x01(\x0b\x32:.google.shopping.merchant.accounts.v1beta.CheckoutSettingsB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"b\n\x1d\x44\x65leteCheckoutSettingsRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+merchantapi.googleapis.com/CheckoutSettings\"\xe5\t\n\x10\x43heckoutSettings\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12P\n\x0curi_settings\x18\x02 \x01(\x0b\x32\x35.google.shopping.merchant.accounts.v1beta.UriSettingsH\x00\x88\x01\x01\x12U\n\x15\x65ligible_destinations\x18\x08 \x03(\x0e\x32\x31.google.shopping.type.Destination.DestinationEnumB\x03\xe0\x41\x01\x12v\n\x10\x65nrollment_state\x18\x03 \x01(\x0e\x32R.google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutEnrollmentStateB\x03\xe0\x41\x03H\x01\x88\x01\x01\x12n\n\x0creview_state\x18\x04 \x01(\x0e\x32N.google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutReviewStateB\x03\xe0\x41\x03H\x02\x88\x01\x01\x12Z\n\x16\x65\x66\x66\x65\x63tive_uri_settings\x18\x05 \x01(\x0b\x32\x35.google.shopping.merchant.accounts.v1beta.UriSettingsB\x03\xe0\x41\x03\x12\x80\x01\n\x1a\x65\x66\x66\x65\x63tive_enrollment_state\x18\x06 \x01(\x0e\x32R.google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutEnrollmentStateB\x03\xe0\x41\x03H\x03\x88\x01\x01\x12x\n\x16\x65\x66\x66\x65\x63tive_review_state\x18\x07 \x01(\x0e\x32N.google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutReviewStateB\x03\xe0\x41\x03H\x04\x88\x01\x01\"o\n\x17\x43heckoutEnrollmentState\x12)\n%CHECKOUT_ENROLLMENT_STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08INACTIVE\x10\x01\x12\x0c\n\x08\x45NROLLED\x10\x02\x12\r\n\tOPTED_OUT\x10\x03\"j\n\x13\x43heckoutReviewState\x12%\n!CHECKOUT_REVIEW_STATE_UNSPECIFIED\x10\x00\x12\r\n\tIN_REVIEW\x10\x01\x12\x0c\n\x08\x41PPROVED\x10\x02\x12\x0f\n\x0b\x44ISAPPROVED\x10\x03:\x85\x01\xea\x41\x81\x01\n+merchantapi.googleapis.com/CheckoutSettings\x12\x36\x61\x63\x63ounts/{account}/programs/{program}/checkoutSettings*\x08settings2\x10\x63heckoutSettingsB\x0f\n\r_uri_settingsB\x13\n\x11_enrollment_stateB\x0f\n\r_review_stateB\x1d\n\x1b_effective_enrollment_stateB\x19\n\x17_effective_review_state\"[\n\x0bUriSettings\x12\x1f\n\x15\x63heckout_uri_template\x18\x01 \x01(\tH\x00\x12\x1b\n\x11\x63\x61rt_uri_template\x18\x02 \x01(\tH\x00\x42\x0e\n\x0curi_template2\xdc\x08\n\x17\x43heckoutSettingsService\x12\xe6\x01\n\x13GetCheckoutSettings\x12\x44.google.shopping.merchant.accounts.v1beta.GetCheckoutSettingsRequest\x1a:.google.shopping.merchant.accounts.v1beta.CheckoutSettings\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@\x12>/accounts/v1beta/{name=accounts/*/programs/*/checkoutSettings}\x12\x95\x02\n\x16\x43reateCheckoutSettings\x12G.google.shopping.merchant.accounts.v1beta.CreateCheckoutSettingsRequest\x1a:.google.shopping.merchant.accounts.v1beta.CheckoutSettings\"v\xda\x41\x18parent,checkout_settings\x82\xd3\xe4\x93\x02U\"@/accounts/v1beta/{parent=accounts/*/programs/*}/checkoutSettings:\x11\x63heckout_settings\x12\xab\x02\n\x16UpdateCheckoutSettings\x12G.google.shopping.merchant.accounts.v1beta.UpdateCheckoutSettingsRequest\x1a:.google.shopping.merchant.accounts.v1beta.CheckoutSettings\"\x8b\x01\xda\x41\x1d\x63heckout_settings,update_mask\x82\xd3\xe4\x93\x02\x65\x32P/accounts/v1beta/{checkout_settings.name=accounts/*/programs/*/checkoutSettings}:\x11\x63heckout_settings\x12\xc8\x01\n\x16\x44\x65leteCheckoutSettings\x12G.google.shopping.merchant.accounts.v1beta.DeleteCheckoutSettingsRequest\x1a\x16.google.protobuf.Empty\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@*>/accounts/v1beta/{name=accounts/*/programs/*/checkoutSettings}\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x97\x01\n,com.google.shopping.merchant.accounts.v1betaB\x15\x43heckoutsettingsProtoP\x01ZNcloud.google.com/go/shopping/merchant/accounts/apiv1beta/accountspb;accountspbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          GetCheckoutSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GetCheckoutSettingsRequest").msgclass
          CreateCheckoutSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CreateCheckoutSettingsRequest").msgclass
          UpdateCheckoutSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.UpdateCheckoutSettingsRequest").msgclass
          DeleteCheckoutSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.DeleteCheckoutSettingsRequest").msgclass
          CheckoutSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CheckoutSettings").msgclass
          CheckoutSettings::CheckoutEnrollmentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutEnrollmentState").enummodule
          CheckoutSettings::CheckoutReviewState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.CheckoutSettings.CheckoutReviewState").enummodule
          UriSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.UriSettings").msgclass
        end
      end
    end
  end
end
