# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/dataexchange/v1beta1/dataexchange.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n=google/cloud/bigquery/dataexchange/v1beta1/dataexchange.proto\x12*google.cloud.bigquery.dataexchange.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\xbc\x02\n\x0c\x44\x61taExchange\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x19\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1d\n\x0fprimary_contact\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rdocumentation\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rlisting_count\x18\x06 \x01(\x05\x42\x04\xe2\x41\x01\x03\x12\x12\n\x04icon\x18\x07 \x01(\x0c\x42\x04\xe2\x41\x01\x01:t\xea\x41q\n(analyticshub.googleapis.com/DataExchange\x12\x45projects/{project}/locations/{location}/dataExchanges/{data_exchange}\"A\n\x0c\x44\x61taProvider\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1d\n\x0fprimary_contact\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\">\n\tPublisher\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1d\n\x0fprimary_contact\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"Q\n\x1b\x44\x65stinationDatasetReference\x12\x18\n\ndataset_id\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x18\n\nproject_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"\x9b\x03\n\x12\x44\x65stinationDataset\x12h\n\x11\x64\x61taset_reference\x18\x01 \x01(\x0b\x32G.google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetReferenceB\x04\xe2\x41\x01\x02\x12\x39\n\rfriendly_name\x18\x02 \x01(\x0b\x32\x1c.google.protobuf.StringValueB\x04\xe2\x41\x01\x01\x12\x37\n\x0b\x64\x65scription\x18\x03 \x01(\x0b\x32\x1c.google.protobuf.StringValueB\x04\xe2\x41\x01\x01\x12`\n\x06labels\x18\x04 \x03(\x0b\x32J.google.cloud.bigquery.dataexchange.v1beta1.DestinationDataset.LabelsEntryB\x04\xe2\x41\x01\x01\x12\x16\n\x08location\x18\x05 \x01(\tB\x04\xe2\x41\x01\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xc3\x0b\n\x07Listing\x12k\n\x10\x62igquery_dataset\x18\x06 \x01(\x0b\x32I.google.cloud.bigquery.dataexchange.v1beta1.Listing.BigQueryDatasetSourceB\x04\xe2\x41\x01\x02H\x00\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x19\n\x0b\x64\x65scription\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1d\n\x0fprimary_contact\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rdocumentation\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12N\n\x05state\x18\x07 \x01(\x0e\x32\x39.google.cloud.bigquery.dataexchange.v1beta1.Listing.StateB\x04\xe2\x41\x01\x03\x12\x12\n\x04icon\x18\x08 \x01(\x0c\x42\x04\xe2\x41\x01\x01\x12U\n\rdata_provider\x18\t \x01(\x0b\x32\x38.google.cloud.bigquery.dataexchange.v1beta1.DataProviderB\x04\xe2\x41\x01\x01\x12V\n\ncategories\x18\n \x03(\x0e\x32<.google.cloud.bigquery.dataexchange.v1beta1.Listing.CategoryB\x04\xe2\x41\x01\x01\x12N\n\tpublisher\x18\x0b \x01(\x0b\x32\x35.google.cloud.bigquery.dataexchange.v1beta1.PublisherB\x04\xe2\x41\x01\x01\x12\x1c\n\x0erequest_access\x18\x0c \x01(\tB\x04\xe2\x41\x01\x01\x1aN\n\x15\x42igQueryDatasetSource\x12\x35\n\x07\x64\x61taset\x18\x01 \x01(\tB$\xfa\x41!\n\x1f\x62igquery.googleapis.com/Dataset\"*\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\"\xb7\x04\n\x08\x43\x61tegory\x12\x18\n\x14\x43\x41TEGORY_UNSPECIFIED\x10\x00\x12\x13\n\x0f\x43\x41TEGORY_OTHERS\x10\x01\x12&\n\"CATEGORY_ADVERTISING_AND_MARKETING\x10\x02\x12\x15\n\x11\x43\x41TEGORY_COMMERCE\x10\x03\x12$\n CATEGORY_CLIMATE_AND_ENVIRONMENT\x10\x04\x12\x19\n\x15\x43\x41TEGORY_DEMOGRAPHICS\x10\x05\x12\x16\n\x12\x43\x41TEGORY_ECONOMICS\x10\x06\x12\x16\n\x12\x43\x41TEGORY_EDUCATION\x10\x07\x12\x13\n\x0f\x43\x41TEGORY_ENERGY\x10\x08\x12\x16\n\x12\x43\x41TEGORY_FINANCIAL\x10\t\x12\x13\n\x0f\x43\x41TEGORY_GAMING\x10\n\x12\x17\n\x13\x43\x41TEGORY_GEOSPATIAL\x10\x0b\x12(\n$CATEGORY_HEALTHCARE_AND_LIFE_SCIENCE\x10\x0c\x12\x12\n\x0e\x43\x41TEGORY_MEDIA\x10\r\x12\x1a\n\x16\x43\x41TEGORY_PUBLIC_SECTOR\x10\x0e\x12\x13\n\x0f\x43\x41TEGORY_RETAIL\x10\x0f\x12\x13\n\x0f\x43\x41TEGORY_SPORTS\x10\x10\x12!\n\x1d\x43\x41TEGORY_SCIENCE_AND_RESEARCH\x10\x11\x12)\n%CATEGORY_TRANSPORTATION_AND_LOGISTICS\x10\x12\x12\x1f\n\x1b\x43\x41TEGORY_TRAVEL_AND_TOURISM\x10\x13:\x82\x01\xea\x41\x7f\n#analyticshub.googleapis.com/Listing\x12Xprojects/{project}/locations/{location}/dataExchanges/{data_exchange}/listings/{listing}B\x08\n\x06source\"}\n\x18ListDataExchangesRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x86\x01\n\x19ListDataExchangesResponse\x12P\n\x0e\x64\x61ta_exchanges\x18\x01 \x03(\x0b\x32\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchange\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"`\n\x1bListOrgDataExchangesRequest\x12\x1a\n\x0corganization\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x89\x01\n\x1cListOrgDataExchangesResponse\x12P\n\x0e\x64\x61ta_exchanges\x18\x01 \x03(\x0b\x32\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchange\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Y\n\x16GetDataExchangeRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(analyticshub.googleapis.com/DataExchange\"\xce\x01\n\x19\x43reateDataExchangeRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1e\n\x10\x64\x61ta_exchange_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12U\n\rdata_exchange\x18\x03 \x01(\x0b\x32\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchangeB\x04\xe2\x41\x01\x02\"\xa9\x01\n\x19UpdateDataExchangeRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12U\n\rdata_exchange\x18\x02 \x01(\x0b\x32\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchangeB\x04\xe2\x41\x01\x02\"\\\n\x19\x44\x65leteDataExchangeRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(analyticshub.googleapis.com/DataExchange\"\x7f\n\x13ListListingsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(analyticshub.googleapis.com/DataExchange\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"v\n\x14ListListingsResponse\x12\x45\n\x08listings\x18\x01 \x03(\x0b\x32\x33.google.cloud.bigquery.dataexchange.v1beta1.Listing\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"O\n\x11GetListingRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe2\x41\x01\x02\xfa\x41%\n#analyticshub.googleapis.com/Listing\"\xbf\x01\n\x14\x43reateListingRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(analyticshub.googleapis.com/DataExchange\x12\x18\n\nlisting_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12J\n\x07listing\x18\x03 \x01(\x0b\x32\x33.google.cloud.bigquery.dataexchange.v1beta1.ListingB\x04\xe2\x41\x01\x02\"\x99\x01\n\x14UpdateListingRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12J\n\x07listing\x18\x02 \x01(\x0b\x32\x33.google.cloud.bigquery.dataexchange.v1beta1.ListingB\x04\xe2\x41\x01\x02\"R\n\x14\x44\x65leteListingRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe2\x41\x01\x02\xfa\x41%\n#analyticshub.googleapis.com/Listing\"\xc3\x01\n\x17SubscribeListingRequest\x12]\n\x13\x64\x65stination_dataset\x18\x03 \x01(\x0b\x32>.google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetH\x00\x12:\n\x04name\x18\x01 \x01(\tB,\xe2\x41\x01\x02\xfa\x41%\n#analyticshub.googleapis.com/ListingB\r\n\x0b\x64\x65stination\"\x1a\n\x18SubscribeListingResponse2\xa6\x1d\n\x13\x41nalyticsHubService\x12\xe9\x01\n\x11ListDataExchanges\x12\x44.google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesRequest\x1a\x45.google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v1beta1/{parent=projects/*/locations/*}/dataExchanges\x12\x83\x02\n\x14ListOrgDataExchanges\x12G.google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesRequest\x1aH.google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesResponse\"X\xda\x41\x0corganization\x82\xd3\xe4\x93\x02\x43\x12\x41/v1beta1/{organization=organizations/*/locations/*}/dataExchanges\x12\xd6\x01\n\x0fGetDataExchange\x12\x42.google.cloud.bigquery.dataexchange.v1beta1.GetDataExchangeRequest\x1a\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchange\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v1beta1/{name=projects/*/locations/*/dataExchanges/*}\x12\xfb\x01\n\x12\x43reateDataExchange\x12\x45.google.cloud.bigquery.dataexchange.v1beta1.CreateDataExchangeRequest\x1a\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchange\"d\xda\x41\x14parent,data_exchange\x82\xd3\xe4\x93\x02G\"6/v1beta1/{parent=projects/*/locations/*}/dataExchanges:\rdata_exchange\x12\x8e\x02\n\x12UpdateDataExchange\x12\x45.google.cloud.bigquery.dataexchange.v1beta1.UpdateDataExchangeRequest\x1a\x38.google.cloud.bigquery.dataexchange.v1beta1.DataExchange\"w\xda\x41\x19\x64\x61ta_exchange,update_mask\x82\xd3\xe4\x93\x02U2D/v1beta1/{data_exchange.name=projects/*/locations/*/dataExchanges/*}:\rdata_exchange\x12\xba\x01\n\x12\x44\x65leteDataExchange\x12\x45.google.cloud.bigquery.dataexchange.v1beta1.DeleteDataExchangeRequest\x1a\x16.google.protobuf.Empty\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38*6/v1beta1/{name=projects/*/locations/*/dataExchanges/*}\x12\xe5\x01\n\x0cListListings\x12?.google.cloud.bigquery.dataexchange.v1beta1.ListListingsRequest\x1a@.google.cloud.bigquery.dataexchange.v1beta1.ListListingsResponse\"R\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x43\x12\x41/v1beta1/{parent=projects/*/locations/*/dataExchanges/*}/listings\x12\xd2\x01\n\nGetListing\x12=.google.cloud.bigquery.dataexchange.v1beta1.GetListingRequest\x1a\x33.google.cloud.bigquery.dataexchange.v1beta1.Listing\"P\xda\x41\x04name\x82\xd3\xe4\x93\x02\x43\x12\x41/v1beta1/{name=projects/*/locations/*/dataExchanges/*/listings/*}\x12\xeb\x01\n\rCreateListing\x12@.google.cloud.bigquery.dataexchange.v1beta1.CreateListingRequest\x1a\x33.google.cloud.bigquery.dataexchange.v1beta1.Listing\"c\xda\x41\x0eparent,listing\x82\xd3\xe4\x93\x02L\"A/v1beta1/{parent=projects/*/locations/*/dataExchanges/*}/listings:\x07listing\x12\xf8\x01\n\rUpdateListing\x12@.google.cloud.bigquery.dataexchange.v1beta1.UpdateListingRequest\x1a\x33.google.cloud.bigquery.dataexchange.v1beta1.Listing\"p\xda\x41\x13listing,update_mask\x82\xd3\xe4\x93\x02T2I/v1beta1/{listing.name=projects/*/locations/*/dataExchanges/*/listings/*}:\x07listing\x12\xbb\x01\n\rDeleteListing\x12@.google.cloud.bigquery.dataexchange.v1beta1.DeleteListingRequest\x1a\x16.google.protobuf.Empty\"P\xda\x41\x04name\x82\xd3\xe4\x93\x02\x43*A/v1beta1/{name=projects/*/locations/*/dataExchanges/*/listings/*}\x12\xfc\x01\n\x10SubscribeListing\x12\x43.google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingRequest\x1a\x44.google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingResponse\"]\xda\x41\x04name\x82\xd3\xe4\x93\x02P\"K/v1beta1/{name=projects/*/locations/*/dataExchanges/*/listings/*}:subscribe:\x01*\x12\xf8\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xac\x01\x82\xd3\xe4\x93\x02\xa5\x01\"G/v1beta1/{resource=projects/*/locations/*/dataExchanges/*}:getIamPolicy:\x01*ZW\"R/v1beta1/{resource=projects/*/locations/*/dataExchanges/*/listings/*}:getIamPolicy:\x01*\x12\xf8\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xac\x01\x82\xd3\xe4\x93\x02\xa5\x01\"G/v1beta1/{resource=projects/*/locations/*/dataExchanges/*}:setIamPolicy:\x01*ZW\"R/v1beta1/{resource=projects/*/locations/*/dataExchanges/*/listings/*}:setIamPolicy:\x01*\x12\xa4\x02\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"\xb8\x01\x82\xd3\xe4\x93\x02\xb1\x01\"M/v1beta1/{resource=projects/*/locations/*/dataExchanges/*}:testIamPermissions:\x01*Z]\"X/v1beta1/{resource=projects/*/locations/*/dataExchanges/*/listings/*}:testIamPermissions:\x01*\x1ax\xca\x41\x1b\x61nalyticshub.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/cloud-platformB\xef\x02\n.com.google.cloud.bigquery.dataexchange.v1beta1B\x11\x44\x61taExchangeProtoP\x01ZRcloud.google.com/go/bigquery/dataexchange/apiv1beta1/dataexchangepb;dataexchangepb\xaa\x02*Google.Cloud.BigQuery.DataExchange.V1Beta1\xca\x02*Google\\Cloud\\BigQuery\\DataExchange\\V1beta1\xea\x02.Google::Cloud::Bigquery::DataExchange::V1beta1\xea\x41H\n\x1f\x62igquery.googleapis.com/Dataset\x12%projects/{project}/datasets/{dataset}b\x06proto3"

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
    ["google.protobuf.StringValue", "google/protobuf/wrappers.proto"],
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
  module Cloud
    module Bigquery
      module DataExchange
        module V1beta1
          DataExchange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DataExchange").msgclass
          DataProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DataProvider").msgclass
          Publisher = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Publisher").msgclass
          DestinationDatasetReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DestinationDatasetReference").msgclass
          DestinationDataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DestinationDataset").msgclass
          Listing = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing").msgclass
          Listing::BigQueryDatasetSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing.BigQueryDatasetSource").msgclass
          Listing::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing.State").enummodule
          Listing::Category = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.Listing.Category").enummodule
          ListDataExchangesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesRequest").msgclass
          ListDataExchangesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListDataExchangesResponse").msgclass
          ListOrgDataExchangesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesRequest").msgclass
          ListOrgDataExchangesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListOrgDataExchangesResponse").msgclass
          GetDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.GetDataExchangeRequest").msgclass
          CreateDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.CreateDataExchangeRequest").msgclass
          UpdateDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.UpdateDataExchangeRequest").msgclass
          DeleteDataExchangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DeleteDataExchangeRequest").msgclass
          ListListingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListListingsRequest").msgclass
          ListListingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.ListListingsResponse").msgclass
          GetListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.GetListingRequest").msgclass
          CreateListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.CreateListingRequest").msgclass
          UpdateListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.UpdateListingRequest").msgclass
          DeleteListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.DeleteListingRequest").msgclass
          SubscribeListingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingRequest").msgclass
          SubscribeListingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.dataexchange.v1beta1.SubscribeListingResponse").msgclass
        end
      end
    end
  end
end
