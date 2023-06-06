# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/document_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/document_pb'
require 'google/cloud/discoveryengine/v1/import_config_pb'
require 'google/cloud/discoveryengine/v1/purge_config_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n6google/cloud/discoveryengine/v1/document_service.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/cloud/discoveryengine/v1/document.proto\x1a\x33google/cloud/discoveryengine/v1/import_config.proto\x1a\x32google/cloud/discoveryengine/v1/purge_config.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\"S\n\x12GetDocumentRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'discoveryengine.googleapis.com/Document\"|\n\x14ListDocumentsRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Branch\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"n\n\x15ListDocumentsResponse\x12<\n\tdocuments\x18\x01 \x03(\x0b\x32).google.cloud.discoveryengine.v1.Document\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb2\x01\n\x15\x43reateDocumentRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Branch\x12@\n\x08\x64ocument\x18\x02 \x01(\x0b\x32).google.cloud.discoveryengine.v1.DocumentB\x03\xe0\x41\x02\x12\x18\n\x0b\x64ocument_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"p\n\x15UpdateDocumentRequest\x12@\n\x08\x64ocument\x18\x01 \x01(\x0b\x32).google.cloud.discoveryengine.v1.DocumentB\x03\xe0\x41\x02\x12\x15\n\rallow_missing\x18\x02 \x01(\x08\"V\n\x15\x44\x65leteDocumentRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'discoveryengine.googleapis.com/Document2\x90\x13\n\x0f\x44ocumentService\x12\x9c\x02\n\x0bGetDocument\x12\x33.google.cloud.discoveryengine.v1.GetDocumentRequest\x1a).google.cloud.discoveryengine.v1.Document\"\xac\x01\x82\xd3\xe4\x93\x02\x9e\x01\x12\x45/v1/{name=projects/*/locations/*/dataStores/*/branches/*/documents/*}ZU\x12S/v1/{name=projects/*/locations/*/collections/*/dataStores/*/branches/*/documents/*}\xda\x41\x04name\x12\xaf\x02\n\rListDocuments\x12\x35.google.cloud.discoveryengine.v1.ListDocumentsRequest\x1a\x36.google.cloud.discoveryengine.v1.ListDocumentsResponse\"\xae\x01\x82\xd3\xe4\x93\x02\x9e\x01\x12\x45/v1/{parent=projects/*/locations/*/dataStores/*/branches/*}/documentsZU\x12S/v1/{parent=projects/*/locations/*/collections/*/dataStores/*/branches/*}/documents\xda\x41\x06parent\x12\xcd\x02\n\x0e\x43reateDocument\x12\x36.google.cloud.discoveryengine.v1.CreateDocumentRequest\x1a).google.cloud.discoveryengine.v1.Document\"\xd7\x01\x82\xd3\xe4\x93\x02\xb2\x01\"E/v1/{parent=projects/*/locations/*/dataStores/*/branches/*}/documents:\x08\x64ocumentZ_\"S/v1/{parent=projects/*/locations/*/collections/*/dataStores/*/branches/*}/documents:\x08\x64ocument\xda\x41\x1bparent,document,document_id\x12\xc1\x02\n\x0eUpdateDocument\x12\x36.google.cloud.discoveryengine.v1.UpdateDocumentRequest\x1a).google.cloud.discoveryengine.v1.Document\"\xcb\x01\x82\xd3\xe4\x93\x02\xc4\x01\x32N/v1/{document.name=projects/*/locations/*/dataStores/*/branches/*/documents/*}:\x08\x64ocumentZh2\\/v1/{document.name=projects/*/locations/*/collections/*/dataStores/*/branches/*/documents/*}:\x08\x64ocument\x12\x8f\x02\n\x0e\x44\x65leteDocument\x12\x36.google.cloud.discoveryengine.v1.DeleteDocumentRequest\x1a\x16.google.protobuf.Empty\"\xac\x01\x82\xd3\xe4\x93\x02\x9e\x01*E/v1/{name=projects/*/locations/*/dataStores/*/branches/*/documents/*}ZU*S/v1/{name=projects/*/locations/*/collections/*/dataStores/*/branches/*/documents/*}\xda\x41\x04name\x12\x9a\x03\n\x0fImportDocuments\x12\x37.google.cloud.discoveryengine.v1.ImportDocumentsRequest\x1a\x1d.google.longrunning.Operation\"\xae\x02\x82\xd3\xe4\x93\x02\xb2\x01\"L/v1/{parent=projects/*/locations/*/dataStores/*/branches/*}/documents:import:\x01*Z_\"Z/v1/{parent=projects/*/locations/*/collections/*/dataStores/*/branches/*}/documents:import:\x01*\xca\x41r\n7google.cloud.discoveryengine.v1.ImportDocumentsResponse\x12\x37google.cloud.discoveryengine.v1.ImportDocumentsMetadata\x12\x94\x03\n\x0ePurgeDocuments\x12\x36.google.cloud.discoveryengine.v1.PurgeDocumentsRequest\x1a\x1d.google.longrunning.Operation\"\xaa\x02\x82\xd3\xe4\x93\x02\xb0\x01\"K/v1/{parent=projects/*/locations/*/dataStores/*/branches/*}/documents:purge:\x01*Z^\"Y/v1/{parent=projects/*/locations/*/collections/*/dataStores/*/branches/*}/documents:purge:\x01*\xca\x41p\n6google.cloud.discoveryengine.v1.PurgeDocumentsResponse\x12\x36google.cloud.discoveryengine.v1.PurgeDocumentsMetadata\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x87\x02\n#com.google.cloud.discoveryengine.v1B\x14\x44ocumentServiceProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.discoveryengine.v1.Document", "google/cloud/discoveryengine/v1/document.proto"],
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
        GetDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.GetDocumentRequest").msgclass
        ListDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListDocumentsRequest").msgclass
        ListDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.ListDocumentsResponse").msgclass
        CreateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CreateDocumentRequest").msgclass
        UpdateDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.UpdateDocumentRequest").msgclass
        DeleteDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.DeleteDocumentRequest").msgclass
      end
    end
  end
end