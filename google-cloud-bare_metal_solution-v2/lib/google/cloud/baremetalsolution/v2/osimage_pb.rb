# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/osimage.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n/google/cloud/baremetalsolution/v2/osimage.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x87\x02\n\x07OSImage\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x0c\n\x04\x63ode\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12!\n\x19\x61pplicable_instance_types\x18\x04 \x03(\t\x12#\n\x1bsupported_network_templates\x18\x05 \x03(\t:}\xea\x41z\n(baremetalsolution.googleapis.com/OsImage\x12;projects/{project}/locations/{location}/osImages/{os_image}*\x08osImages2\x07osImage\"x\n\x13ListOSImagesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"n\n\x14ListOSImagesResponse\x12=\n\tos_images\x18\x01 \x03(\x0b\x32*.google.cloud.baremetalsolution.v2.OSImage\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\tB\xfb\x01\n%com.google.cloud.baremetalsolution.v2B\x0cOsImageProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

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
  module Cloud
    module BareMetalSolution
      module V2
        OSImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.OSImage").msgclass
        ListOSImagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListOSImagesRequest").msgclass
        ListOSImagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListOSImagesResponse").msgclass
      end
    end
  end
end
