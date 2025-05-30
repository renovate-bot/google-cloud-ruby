# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/events/subscriptions/v1/subscriptions_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/apps/events/subscriptions/v1/subscription_resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n?google/apps/events/subscriptions/v1/subscriptions_service.proto\x12#google.apps.events.subscriptions.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a?google/apps/events/subscriptions/v1/subscription_resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x85\x01\n\x19\x43reateSubscriptionRequest\x12L\n\x0csubscription\x18\x01 \x01(\x0b\x32\x31.google.apps.events.subscriptions.v1.SubscriptionB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"\xa9\x01\n\x19\x44\x65leteSubscriptionRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+workspaceevents.googleapis.com/Subscription\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x04 \x01(\tB\x03\xe0\x41\x01\"[\n\x16GetSubscriptionRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+workspaceevents.googleapis.com/Subscription\"\xbb\x01\n\x19UpdateSubscriptionRequest\x12L\n\x0csubscription\x18\x01 \x01(\x0b\x32\x31.google.apps.events.subscriptions.v1.SubscriptionB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"b\n\x1dReactivateSubscriptionRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+workspaceevents.googleapis.com/Subscription\"`\n\x18ListSubscriptionsRequest\x12\x16\n\tpage_size\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x03 \x01(\tB\x03\xe0\x41\x02\"~\n\x19ListSubscriptionsResponse\x12H\n\rsubscriptions\x18\x01 \x03(\x0b\x32\x31.google.apps.events.subscriptions.v1.Subscription\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x1c\n\x1aUpdateSubscriptionMetadata\"\x1c\n\x1a\x43reateSubscriptionMetadata\"\x1c\n\x1a\x44\x65leteSubscriptionMetadata\" \n\x1eReactivateSubscriptionMetadata2\xd6\x0e\n\x14SubscriptionsService\x12\xd8\x01\n\x12\x43reateSubscription\x12>.google.apps.events.subscriptions.v1.CreateSubscriptionRequest\x1a\x1d.google.longrunning.Operation\"c\xca\x41*\n\x0cSubscription\x12\x1a\x43reateSubscriptionMetadata\xda\x41\x0csubscription\x82\xd3\xe4\x93\x02!\"\x11/v1/subscriptions:\x0csubscription\x12\xd4\x01\n\x12\x44\x65leteSubscription\x12>.google.apps.events.subscriptions.v1.DeleteSubscriptionRequest\x1a\x1d.google.longrunning.Operation\"_\xca\x41\x33\n\x15google.protobuf.Empty\x12\x1a\x44\x65leteSubscriptionMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1c*\x1a/v1/{name=subscriptions/*}\x12\xac\x01\n\x0fGetSubscription\x12;.google.apps.events.subscriptions.v1.GetSubscriptionRequest\x1a\x31.google.apps.events.subscriptions.v1.Subscription\")\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1c\x12\x1a/v1/{name=subscriptions/*}\x12\xb6\x01\n\x11ListSubscriptions\x12=.google.apps.events.subscriptions.v1.ListSubscriptionsRequest\x1a>.google.apps.events.subscriptions.v1.ListSubscriptionsResponse\"\"\xda\x41\x06\x66ilter\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/subscriptions\x12\xfb\x01\n\x12UpdateSubscription\x12>.google.apps.events.subscriptions.v1.UpdateSubscriptionRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\xca\x41*\n\x0cSubscription\x12\x1aUpdateSubscriptionMetadata\xda\x41\x18subscription,update_mask\x82\xd3\xe4\x93\x02\x37\x32\'/v1/{subscription.name=subscriptions/*}:\x0csubscription\x12\xe5\x01\n\x16ReactivateSubscription\x12\x42.google.apps.events.subscriptions.v1.ReactivateSubscriptionRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41.\n\x0cSubscription\x12\x1eReactivateSubscriptionMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02*\"%/v1/{name=subscriptions/*}:reactivate:\x01*\x1a\xbd\x04\xca\x41\x1eworkspaceevents.googleapis.com\xd2\x41\x98\x04https://www.googleapis.com/auth/chat.memberships,https://www.googleapis.com/auth/chat.memberships.readonly,https://www.googleapis.com/auth/chat.messages,https://www.googleapis.com/auth/chat.messages.reactions,https://www.googleapis.com/auth/chat.messages.reactions.readonly,https://www.googleapis.com/auth/chat.messages.readonly,https://www.googleapis.com/auth/chat.spaces,https://www.googleapis.com/auth/chat.spaces.readonly,https://www.googleapis.com/auth/meetings.space.created,https://www.googleapis.com/auth/meetings.space.readonlyB\x91\x02\n\'com.google.apps.events.subscriptions.v1B\x19SubscriptionsServiceProtoP\x01ZScloud.google.com/go/apps/events/subscriptions/apiv1/subscriptionspb;subscriptionspb\xaa\x02#Google.Apps.Events.Subscriptions.V1\xca\x02#Google\\Apps\\Events\\Subscriptions\\V1\xea\x02\'Google::Apps::Events::Subscriptions::V1b\x06proto3"

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
    ["google.apps.events.subscriptions.v1.Subscription", "google/apps/events/subscriptions/v1/subscription_resource.proto"],
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
  module Apps
    module Events
      module Subscriptions
        module V1
          CreateSubscriptionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.CreateSubscriptionRequest").msgclass
          DeleteSubscriptionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.DeleteSubscriptionRequest").msgclass
          GetSubscriptionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.GetSubscriptionRequest").msgclass
          UpdateSubscriptionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.UpdateSubscriptionRequest").msgclass
          ReactivateSubscriptionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.ReactivateSubscriptionRequest").msgclass
          ListSubscriptionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.ListSubscriptionsRequest").msgclass
          ListSubscriptionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.ListSubscriptionsResponse").msgclass
          UpdateSubscriptionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.UpdateSubscriptionMetadata").msgclass
          CreateSubscriptionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.CreateSubscriptionMetadata").msgclass
          DeleteSubscriptionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.DeleteSubscriptionMetadata").msgclass
          ReactivateSubscriptionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.events.subscriptions.v1.ReactivateSubscriptionMetadata").msgclass
        end
      end
    end
  end
end
