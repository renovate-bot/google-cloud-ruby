# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/assist_answer.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n3google/cloud/discoveryengine/v1/assist_answer.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x8d\x06\n\x0c\x41ssistAnswer\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x42\n\x05state\x18\x02 \x01(\x0e\x32\x33.google.cloud.discoveryengine.v1.AssistAnswer.State\x12\x44\n\x07replies\x18\x03 \x03(\x0b\x32\x33.google.cloud.discoveryengine.v1.AssistAnswer.Reply\x12\x61\n\x16\x61ssist_skipped_reasons\x18\x05 \x03(\x0e\x32\x41.google.cloud.discoveryengine.v1.AssistAnswer.AssistSkippedReason\x1ag\n\x05Reply\x12U\n\x10grounded_content\x18\x01 \x01(\x0b\x32\x39.google.cloud.discoveryengine.v1.AssistantGroundedContentH\x00\x42\x07\n\x05reply\"W\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\x0b\n\x07SKIPPED\x10\x04\"\x81\x01\n\x13\x41ssistSkippedReason\x12%\n!ASSIST_SKIPPED_REASON_UNSPECIFIED\x10\x00\x12$\n NON_ASSIST_SEEKING_QUERY_IGNORED\x10\x01\x12\x1d\n\x19\x43USTOMER_POLICY_VIOLATION\x10\x02:\xb6\x01\xea\x41\xb2\x01\n+discoveryengine.googleapis.com/AssistAnswer\x12\x82\x01projects/{project}/locations/{location}/collections/{collection}/engines/{engine}/sessions/{session}/assistAnswers/{assist_answer}\"\xb1\x06\n\x10\x41ssistantContent\x12\x0e\n\x04text\x18\x02 \x01(\tH\x00\x12M\n\x0binline_data\x18\x03 \x01(\x0b\x32\x36.google.cloud.discoveryengine.v1.AssistantContent.BlobH\x00\x12\x46\n\x04\x66ile\x18\x04 \x01(\x0b\x32\x36.google.cloud.discoveryengine.v1.AssistantContent.FileH\x00\x12[\n\x0f\x65xecutable_code\x18\x07 \x01(\x0b\x32@.google.cloud.discoveryengine.v1.AssistantContent.ExecutableCodeH\x00\x12\x66\n\x15\x63ode_execution_result\x18\x08 \x01(\x0b\x32\x45.google.cloud.discoveryengine.v1.AssistantContent.CodeExecutionResultH\x00\x12\x0c\n\x04role\x18\x01 \x01(\t\x12\x14\n\x07thought\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x1a\x31\n\x04\x42lob\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04\x64\x61ta\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x1a\x34\n\x04\x46ile\x12\x16\n\tmime_type\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07\x66ile_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x1a#\n\x0e\x45xecutableCode\x12\x11\n\x04\x63ode\x18\x02 \x01(\tB\x03\xe0\x41\x02\x1a\xf6\x01\n\x13\x43odeExecutionResult\x12\x63\n\x07outcome\x18\x01 \x01(\x0e\x32M.google.cloud.discoveryengine.v1.AssistantContent.CodeExecutionResult.OutcomeB\x03\xe0\x41\x02\x12\x13\n\x06output\x18\x02 \x01(\tB\x03\xe0\x41\x01\"e\n\x07Outcome\x12\x17\n\x13OUTCOME_UNSPECIFIED\x10\x00\x12\x0e\n\nOUTCOME_OK\x10\x01\x12\x12\n\x0eOUTCOME_FAILED\x10\x02\x12\x1d\n\x19OUTCOME_DEADLINE_EXCEEDED\x10\x03\x42\x06\n\x04\x64\x61ta\"\xdf\x07\n\x18\x41ssistantGroundedContent\x12r\n\x17text_grounding_metadata\x18\x03 \x01(\x0b\x32O.google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadataH\x00\x12\x42\n\x07\x63ontent\x18\x01 \x01(\x0b\x32\x31.google.cloud.discoveryengine.v1.AssistantContent\x1a\xfe\x05\n\x15TextGroundingMetadata\x12i\n\x08segments\x18\x04 \x03(\x0b\x32W.google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Segment\x12m\n\nreferences\x18\x02 \x03(\x0b\x32Y.google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Reference\x1as\n\x07Segment\x12\x13\n\x0bstart_index\x18\x01 \x01(\x03\x12\x11\n\tend_index\x18\x02 \x01(\x03\x12\x19\n\x11reference_indices\x18\x04 \x03(\x05\x12\x17\n\x0fgrounding_score\x18\x05 \x01(\x02\x12\x0c\n\x04text\x18\x06 \x01(\t\x1a\x95\x03\n\tReference\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\t\x12\x85\x01\n\x11\x64ocument_metadata\x18\x02 \x01(\x0b\x32j.google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Reference.DocumentMetadata\x1a\xee\x01\n\x10\x44ocumentMetadata\x12\x43\n\x08\x64ocument\x18\x01 \x01(\tB,\xfa\x41)\n\'discoveryengine.googleapis.com/DocumentH\x00\x88\x01\x01\x12\x10\n\x03uri\x18\x02 \x01(\tH\x01\x88\x01\x01\x12\x12\n\x05title\x18\x03 \x01(\tH\x02\x88\x01\x01\x12\x1c\n\x0fpage_identifier\x18\x04 \x01(\tH\x03\x88\x01\x01\x12\x13\n\x06\x64omain\x18\x05 \x01(\tH\x04\x88\x01\x01\x42\x0b\n\t_documentB\x06\n\x04_uriB\x08\n\x06_titleB\x12\n\x10_page_identifierB\t\n\x07_domainB\n\n\x08metadataB\x84\x02\n#com.google.cloud.discoveryengine.v1B\x11\x41ssistAnswerProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    module DiscoveryEngine
      module V1
        AssistAnswer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistAnswer").msgclass
        AssistAnswer::Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistAnswer.Reply").msgclass
        AssistAnswer::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistAnswer.State").enummodule
        AssistAnswer::AssistSkippedReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistAnswer.AssistSkippedReason").enummodule
        AssistantContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent").msgclass
        AssistantContent::Blob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent.Blob").msgclass
        AssistantContent::File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent.File").msgclass
        AssistantContent::ExecutableCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent.ExecutableCode").msgclass
        AssistantContent::CodeExecutionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent.CodeExecutionResult").msgclass
        AssistantContent::CodeExecutionResult::Outcome = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantContent.CodeExecutionResult.Outcome").enummodule
        AssistantGroundedContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantGroundedContent").msgclass
        AssistantGroundedContent::TextGroundingMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata").msgclass
        AssistantGroundedContent::TextGroundingMetadata::Segment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Segment").msgclass
        AssistantGroundedContent::TextGroundingMetadata::Reference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Reference").msgclass
        AssistantGroundedContent::TextGroundingMetadata::Reference::DocumentMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.AssistantGroundedContent.TextGroundingMetadata.Reference.DocumentMetadata").msgclass
      end
    end
  end
end
