# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/support/v2beta/comment.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/support/v2beta/actor_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/support/v2beta/comment.proto\x12\x1bgoogle.cloud.support.v2beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/cloud/support/v2beta/actor.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdb\x02\n\x07\x43omment\x12\x14\n\x04name\x18\x01 \x01(\tB\x06\xe0\x41\x08\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x38\n\x07\x63reator\x18\x03 \x01(\x0b\x32\".google.cloud.support.v2beta.ActorB\x03\xe0\x41\x03\x12\x0c\n\x04\x62ody\x18\x04 \x01(\t\x12\x1e\n\x0fplain_text_body\x18\x05 \x01(\tB\x05\x18\x01\xe0\x41\x03:\x9b\x01\xea\x41\x97\x01\n#cloudsupport.googleapis.com/Comment\x12<organizations/{organization}/cases/{case}/comments/{comment}\x12\x32projects/{project}/cases/{case}/comments/{comment}B\xc9\x01\n\x1f\x63om.google.cloud.support.v2betaB\x0c\x43ommentProtoP\x01Z9cloud.google.com/go/support/apiv2beta/supportpb;supportpb\xaa\x02\x1bGoogle.Cloud.Support.V2Beta\xca\x02\x1bGoogle\\Cloud\\Support\\V2beta\xea\x02\x1eGoogle::Cloud::Support::V2betab\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.support.v2beta.Actor", "google/cloud/support/v2beta/actor.proto"],
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
    module Support
      module V2beta
        Comment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.support.v2beta.Comment").msgclass
      end
    end
  end
end
