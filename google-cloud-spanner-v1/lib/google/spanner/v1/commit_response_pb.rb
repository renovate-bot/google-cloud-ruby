# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/commit_response.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'google/spanner/v1/transaction_pb'


descriptor_data = "\n\'google/spanner/v1/commit_response.proto\x12\x11google.spanner.v1\x1a\x1fgoogle/protobuf/timestamp.proto\x1a#google/spanner/v1/transaction.proto\"\xd5\x02\n\x0e\x43ommitResponse\x12\x34\n\x10\x63ommit_timestamp\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x43\n\x0c\x63ommit_stats\x18\x02 \x01(\x0b\x32-.google.spanner.v1.CommitResponse.CommitStats\x12N\n\x0fprecommit_token\x18\x04 \x01(\x0b\x32\x33.google.spanner.v1.MultiplexedSessionPrecommitTokenH\x00\x12\x36\n\x12snapshot_timestamp\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x1a%\n\x0b\x43ommitStats\x12\x16\n\x0emutation_count\x18\x01 \x01(\x03\x42\x19\n\x17MultiplexedSessionRetryB\xb6\x01\n\x15\x63om.google.spanner.v1B\x13\x43ommitResponseProtoP\x01Z5cloud.google.com/go/spanner/apiv1/spannerpb;spannerpb\xaa\x02\x17Google.Cloud.Spanner.V1\xca\x02\x17Google\\Cloud\\Spanner\\V1\xea\x02\x1aGoogle::Cloud::Spanner::V1b\x06proto3"

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
    ["google.spanner.v1.MultiplexedSessionPrecommitToken", "google/spanner/v1/transaction.proto"],
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
    module Spanner
      module V1
        CommitResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CommitResponse").msgclass
        CommitResponse::CommitStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CommitResponse.CommitStats").msgclass
      end
    end
  end
end
