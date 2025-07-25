# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/network_service.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/network_messages_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n-google/ads/admanager/v1/network_service.proto\x12\x17google.ads.admanager.v1\x1a.google/ads/admanager/v1/network_messages.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"K\n\x11GetNetworkRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n admanager.googleapis.com/Network\"\x15\n\x13ListNetworksRequest\"J\n\x14ListNetworksResponse\x12\x32\n\x08networks\x18\x01 \x03(\x0b\x32 .google.ads.admanager.v1.Network2\xe0\x02\n\x0eNetworkService\x12\x80\x01\n\nGetNetwork\x12*.google.ads.admanager.v1.GetNetworkRequest\x1a .google.ads.admanager.v1.Network\"$\xda\x41\x04name\x82\xd3\xe4\x93\x02\x17\x12\x15/v1/{name=networks/*}\x12\x81\x01\n\x0cListNetworks\x12,.google.ads.admanager.v1.ListNetworksRequest\x1a-.google.ads.admanager.v1.ListNetworksResponse\"\x14\x82\xd3\xe4\x93\x02\x0e\x12\x0c/v1/networks\x1aG\xca\x41\x18\x61\x64manager.googleapis.com\xd2\x41)https://www.googleapis.com/auth/admanagerB\xc7\x01\n\x1b\x63om.google.ads.admanager.v1B\x13NetworkServiceProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
    ["google.ads.admanager.v1.Network", "google/ads/admanager/v1/network_messages.proto"],
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
  module Ads
    module AdManager
      module V1
        GetNetworkRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.GetNetworkRequest").msgclass
        ListNetworksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListNetworksRequest").msgclass
        ListNetworksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListNetworksResponse").msgclass
      end
    end
  end
end
