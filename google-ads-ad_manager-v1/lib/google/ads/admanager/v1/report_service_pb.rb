# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/report_service.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/report_messages_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n,google/ads/admanager/v1/report_service.proto\x12\x17google.ads.admanager.v1\x1a-google/ads/admanager/v1/report_messages.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"I\n\x10RunReportRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61\x64manager.googleapis.com/Report\"c\n\x11RunReportMetadata\x12\x18\n\x10percent_complete\x18\x02 \x01(\x05\x12\x34\n\x06report\x18\x04 \x01(\tB$\xfa\x41!\n\x1f\x61\x64manager.googleapis.com/Report\"*\n\x11RunReportResponse\x12\x15\n\rreport_result\x18\x01 \x01(\t\"I\n\x10GetReportRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61\x64manager.googleapis.com/Report\"\xbe\x01\n\x12ListReportsRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n admanager.googleapis.com/Network\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04skip\x18\x06 \x01(\x05\x42\x03\xe0\x41\x01\"t\n\x13ListReportsResponse\x12\x30\n\x07reports\x18\x01 \x03(\x0b\x32\x1f.google.ads.admanager.v1.Report\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"\x85\x01\n\x13\x43reateReportRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n admanager.googleapis.com/Network\x12\x34\n\x06report\x18\x02 \x01(\x0b\x32\x1f.google.ads.admanager.v1.ReportB\x03\xe0\x41\x02\"\x81\x01\n\x13UpdateReportRequest\x12\x34\n\x06report\x18\x01 \x01(\x0b\x32\x1f.google.ads.admanager.v1.ReportB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"]\n\x1c\x46\x65tchReportResultRowsRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xe5\x02\n\x1d\x46\x65tchReportResultRowsResponse\x12;\n\x04rows\x18\x01 \x03(\x0b\x32-.google.ads.admanager.v1.Report.DataTable.Row\x12,\n\x08run_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12M\n\x0b\x64\x61te_ranges\x18\x03 \x03(\x0b\x32\x38.google.ads.admanager.v1.Report.DateRange.FixedDateRange\x12X\n\x16\x63omparison_date_ranges\x18\x04 \x03(\x0b\x32\x38.google.ads.admanager.v1.Report.DateRange.FixedDateRange\x12\x17\n\x0ftotal_row_count\x18\x05 \x01(\x05\x12\x17\n\x0fnext_page_token\x18\x06 \x01(\t2\xd2\x08\n\rReportService\x12\x87\x01\n\tGetReport\x12).google.ads.admanager.v1.GetReportRequest\x1a\x1f.google.ads.admanager.v1.Report\".\xda\x41\x04name\x82\xd3\xe4\x93\x02!\x12\x1f/v1/{name=networks/*/reports/*}\x12\x9a\x01\n\x0bListReports\x12+.google.ads.admanager.v1.ListReportsRequest\x1a,.google.ads.admanager.v1.ListReportsResponse\"0\xda\x41\x06parent\x82\xd3\xe4\x93\x02!\x12\x1f/v1/{parent=networks/*}/reports\x12\x9e\x01\n\x0c\x43reateReport\x12,.google.ads.admanager.v1.CreateReportRequest\x1a\x1f.google.ads.admanager.v1.Report\"?\xda\x41\rparent,report\x82\xd3\xe4\x93\x02)\"\x1f/v1/{parent=networks/*}/reports:\x06report\x12\xaa\x01\n\x0cUpdateReport\x12,.google.ads.admanager.v1.UpdateReportRequest\x1a\x1f.google.ads.admanager.v1.Report\"K\xda\x41\x12report,update_mask\x82\xd3\xe4\x93\x02\x30\x32&/v1/{report.name=networks/*/reports/*}:\x06report\x12\xb5\x01\n\tRunReport\x12).google.ads.admanager.v1.RunReportRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41&\n\x11RunReportResponse\x12\x11RunReportMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02(\"#/v1/{name=networks/*/reports/*}:run:\x01*\x12\xca\x01\n\x15\x46\x65tchReportResultRows\x12\x35.google.ads.admanager.v1.FetchReportResultRowsRequest\x1a\x36.google.ads.admanager.v1.FetchReportResultRowsResponse\"B\xda\x41\x04name\x82\xd3\xe4\x93\x02\x35\x12\x33/v1/{name=networks/*/reports/*/results/*}:fetchRows\x1aG\xca\x41\x18\x61\x64manager.googleapis.com\xd2\x41)https://www.googleapis.com/auth/admanagerB\xc6\x01\n\x1b\x63om.google.ads.admanager.v1B\x12ReportServiceProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
    ["google.ads.admanager.v1.Report", "google/ads/admanager/v1/report_messages.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
        RunReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.RunReportRequest").msgclass
        RunReportMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.RunReportMetadata").msgclass
        RunReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.RunReportResponse").msgclass
        GetReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.GetReportRequest").msgclass
        ListReportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListReportsRequest").msgclass
        ListReportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.ListReportsResponse").msgclass
        CreateReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.CreateReportRequest").msgclass
        UpdateReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.UpdateReportRequest").msgclass
        FetchReportResultRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.FetchReportResultRowsRequest").msgclass
        FetchReportResultRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.FetchReportResultRowsResponse").msgclass
      end
    end
  end
end
