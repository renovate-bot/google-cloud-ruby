# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/privacy/dlp/v2/storage.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/privacy/dlp/v2/storage.proto\x12\x15google.privacy.dlp.v2\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"m\n\x08InfoType\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07version\x18\x02 \x01(\t\x12\x42\n\x11sensitivity_score\x18\x03 \x01(\x0b\x32\'.google.privacy.dlp.v2.SensitivityScore\"\xfb\x01\n\x10SensitivityScore\x12L\n\x05score\x18\x01 \x01(\x0e\x32=.google.privacy.dlp.v2.SensitivityScore.SensitivityScoreLevel\"\x98\x01\n\x15SensitivityScoreLevel\x12!\n\x1dSENSITIVITY_SCORE_UNSPECIFIED\x10\x00\x12\x13\n\x0fSENSITIVITY_LOW\x10\n\x12\x17\n\x13SENSITIVITY_UNKNOWN\x10\x0c\x12\x18\n\x14SENSITIVITY_MODERATE\x10\x14\x12\x14\n\x10SENSITIVITY_HIGH\x10\x1e\"K\n\nStoredType\x12\x0c\n\x04name\x18\x01 \x01(\t\x12/\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x8c\x0c\n\x0e\x43ustomInfoType\x12\x32\n\tinfo_type\x18\x01 \x01(\x0b\x32\x1f.google.privacy.dlp.v2.InfoType\x12\x35\n\nlikelihood\x18\x06 \x01(\x0e\x32!.google.privacy.dlp.v2.Likelihood\x12\x46\n\ndictionary\x18\x02 \x01(\x0b\x32\x30.google.privacy.dlp.v2.CustomInfoType.DictionaryH\x00\x12<\n\x05regex\x18\x03 \x01(\x0b\x32+.google.privacy.dlp.v2.CustomInfoType.RegexH\x00\x12M\n\x0esurrogate_type\x18\x04 \x01(\x0b\x32\x33.google.privacy.dlp.v2.CustomInfoType.SurrogateTypeH\x00\x12\x38\n\x0bstored_type\x18\x05 \x01(\x0b\x32!.google.privacy.dlp.v2.StoredTypeH\x00\x12L\n\x0f\x64\x65tection_rules\x18\x07 \x03(\x0b\x32\x33.google.privacy.dlp.v2.CustomInfoType.DetectionRule\x12K\n\x0e\x65xclusion_type\x18\x08 \x01(\x0e\x32\x33.google.privacy.dlp.v2.CustomInfoType.ExclusionType\x12\x42\n\x11sensitivity_score\x18\t \x01(\x0b\x32\'.google.privacy.dlp.v2.SensitivityScore\x1a\xc8\x01\n\nDictionary\x12N\n\tword_list\x18\x01 \x01(\x0b\x32\x39.google.privacy.dlp.v2.CustomInfoType.Dictionary.WordListH\x00\x12\x45\n\x12\x63loud_storage_path\x18\x03 \x01(\x0b\x32\'.google.privacy.dlp.v2.CloudStoragePathH\x00\x1a\x19\n\x08WordList\x12\r\n\x05words\x18\x01 \x03(\tB\x08\n\x06source\x1a/\n\x05Regex\x12\x0f\n\x07pattern\x18\x01 \x01(\t\x12\x15\n\rgroup_indexes\x18\x02 \x03(\x05\x1a\x0f\n\rSurrogateType\x1a\xbe\x04\n\rDetectionRule\x12W\n\x0chotword_rule\x18\x01 \x01(\x0b\x32?.google.privacy.dlp.v2.CustomInfoType.DetectionRule.HotwordRuleH\x00\x1a\x38\n\tProximity\x12\x15\n\rwindow_before\x18\x01 \x01(\x05\x12\x14\n\x0cwindow_after\x18\x02 \x01(\x05\x1a\x82\x01\n\x14LikelihoodAdjustment\x12=\n\x10\x66ixed_likelihood\x18\x01 \x01(\x0e\x32!.google.privacy.dlp.v2.LikelihoodH\x00\x12\x1d\n\x13relative_likelihood\x18\x02 \x01(\x05H\x00\x42\x0c\n\nadjustment\x1a\x8c\x02\n\x0bHotwordRule\x12\x42\n\rhotword_regex\x18\x01 \x01(\x0b\x32+.google.privacy.dlp.v2.CustomInfoType.Regex\x12P\n\tproximity\x18\x02 \x01(\x0b\x32=.google.privacy.dlp.v2.CustomInfoType.DetectionRule.Proximity\x12g\n\x15likelihood_adjustment\x18\x03 \x01(\x0b\x32H.google.privacy.dlp.v2.CustomInfoType.DetectionRule.LikelihoodAdjustmentB\x06\n\x04type\"K\n\rExclusionType\x12\x1e\n\x1a\x45XCLUSION_TYPE_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x45XCLUSION_TYPE_EXCLUDE\x10\x01\x42\x06\n\x04type\"\x17\n\x07\x46ieldId\x12\x0c\n\x04name\x18\x01 \x01(\t\"7\n\x0bPartitionId\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x14\n\x0cnamespace_id\x18\x04 \x01(\t\"\x1e\n\x0eKindExpression\x12\x0c\n\x04name\x18\x01 \x01(\t\"\x81\x01\n\x10\x44\x61tastoreOptions\x12\x38\n\x0cpartition_id\x18\x01 \x01(\x0b\x32\".google.privacy.dlp.v2.PartitionId\x12\x33\n\x04kind\x18\x02 \x01(\x0b\x32%.google.privacy.dlp.v2.KindExpression\"]\n\x18\x43loudStorageRegexFileSet\x12\x13\n\x0b\x62ucket_name\x18\x01 \x01(\t\x12\x15\n\rinclude_regex\x18\x02 \x03(\t\x12\x15\n\rexclude_regex\x18\x03 \x03(\t\"\xec\x03\n\x13\x43loudStorageOptions\x12\x44\n\x08\x66ile_set\x18\x01 \x01(\x0b\x32\x32.google.privacy.dlp.v2.CloudStorageOptions.FileSet\x12\x1c\n\x14\x62ytes_limit_per_file\x18\x04 \x01(\x03\x12$\n\x1c\x62ytes_limit_per_file_percent\x18\x08 \x01(\x05\x12\x33\n\nfile_types\x18\x05 \x03(\x0e\x32\x1f.google.privacy.dlp.v2.FileType\x12N\n\rsample_method\x18\x06 \x01(\x0e\x32\x37.google.privacy.dlp.v2.CloudStorageOptions.SampleMethod\x12\x1b\n\x13\x66iles_limit_percent\x18\x07 \x01(\x05\x1a_\n\x07\x46ileSet\x12\x0b\n\x03url\x18\x01 \x01(\t\x12G\n\x0eregex_file_set\x18\x02 \x01(\x0b\x32/.google.privacy.dlp.v2.CloudStorageRegexFileSet\"H\n\x0cSampleMethod\x12\x1d\n\x19SAMPLE_METHOD_UNSPECIFIED\x10\x00\x12\x07\n\x03TOP\x10\x01\x12\x10\n\x0cRANDOM_START\x10\x02\"\"\n\x13\x43loudStorageFileSet\x12\x0b\n\x03url\x18\x01 \x01(\t\" \n\x10\x43loudStoragePath\x12\x0c\n\x04path\x18\x01 \x01(\t\"\xc4\x03\n\x0f\x42igQueryOptions\x12=\n\x0ftable_reference\x18\x01 \x01(\x0b\x32$.google.privacy.dlp.v2.BigQueryTable\x12:\n\x12identifying_fields\x18\x02 \x03(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\x12\x12\n\nrows_limit\x18\x03 \x01(\x03\x12\x1a\n\x12rows_limit_percent\x18\x06 \x01(\x05\x12J\n\rsample_method\x18\x04 \x01(\x0e\x32\x33.google.privacy.dlp.v2.BigQueryOptions.SampleMethod\x12\x37\n\x0f\x65xcluded_fields\x18\x05 \x03(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\x12\x37\n\x0fincluded_fields\x18\x07 \x03(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\"H\n\x0cSampleMethod\x12\x1d\n\x19SAMPLE_METHOD_UNSPECIFIED\x10\x00\x12\x07\n\x03TOP\x10\x01\x12\x10\n\x0cRANDOM_START\x10\x02\"\xda\x04\n\rStorageConfig\x12\x44\n\x11\x64\x61tastore_options\x18\x02 \x01(\x0b\x32\'.google.privacy.dlp.v2.DatastoreOptionsH\x00\x12K\n\x15\x63loud_storage_options\x18\x03 \x01(\x0b\x32*.google.privacy.dlp.v2.CloudStorageOptionsH\x00\x12\x43\n\x11\x62ig_query_options\x18\x04 \x01(\x0b\x32&.google.privacy.dlp.v2.BigQueryOptionsH\x00\x12>\n\x0ehybrid_options\x18\t \x01(\x0b\x32$.google.privacy.dlp.v2.HybridOptionsH\x00\x12L\n\x0ftimespan_config\x18\x06 \x01(\x0b\x32\x33.google.privacy.dlp.v2.StorageConfig.TimespanConfig\x1a\xda\x01\n\x0eTimespanConfig\x12.\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x37\n\x0ftimestamp_field\x18\x03 \x01(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\x12\x31\n)enable_auto_population_of_timespan_config\x18\x04 \x01(\x08\x42\x06\n\x04type\"\xf6\x01\n\rHybridOptions\x12\x13\n\x0b\x64\x65scription\x18\x01 \x01(\t\x12#\n\x1brequired_finding_label_keys\x18\x02 \x03(\t\x12@\n\x06labels\x18\x03 \x03(\x0b\x32\x30.google.privacy.dlp.v2.HybridOptions.LabelsEntry\x12:\n\rtable_options\x18\x04 \x01(\x0b\x32#.google.privacy.dlp.v2.TableOptions\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x0b\x42igQueryKey\x12=\n\x0ftable_reference\x18\x01 \x01(\x0b\x32$.google.privacy.dlp.v2.BigQueryTable\x12\x12\n\nrow_number\x18\x02 \x01(\x03\">\n\x0c\x44\x61tastoreKey\x12.\n\nentity_key\x18\x01 \x01(\x0b\x32\x1a.google.privacy.dlp.v2.Key\"\xbb\x01\n\x03Key\x12\x38\n\x0cpartition_id\x18\x01 \x01(\x0b\x32\".google.privacy.dlp.v2.PartitionId\x12\x34\n\x04path\x18\x02 \x03(\x0b\x32&.google.privacy.dlp.v2.Key.PathElement\x1a\x44\n\x0bPathElement\x12\x0c\n\x04kind\x18\x01 \x01(\t\x12\x0c\n\x02id\x18\x02 \x01(\x03H\x00\x12\x0e\n\x04name\x18\x03 \x01(\tH\x00\x42\t\n\x07id_type\"\xa1\x01\n\tRecordKey\x12<\n\rdatastore_key\x18\x02 \x01(\x0b\x32#.google.privacy.dlp.v2.DatastoreKeyH\x00\x12;\n\rbig_query_key\x18\x03 \x01(\x0b\x32\".google.privacy.dlp.v2.BigQueryKeyH\x00\x12\x11\n\tid_values\x18\x05 \x03(\tB\x06\n\x04type\"I\n\rBigQueryTable\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x12\n\ndataset_id\x18\x02 \x01(\t\x12\x10\n\x08table_id\x18\x03 \x01(\t\"J\n\x0eTableReference\x12\x12\n\ndataset_id\x18\x01 \x01(\t\x12\x10\n\x08table_id\x18\x02 \x01(\t\x12\x12\n\nproject_id\x18\x03 \x01(\t\"s\n\rBigQueryField\x12\x33\n\x05table\x18\x01 \x01(\x0b\x32$.google.privacy.dlp.v2.BigQueryTable\x12-\n\x05\x66ield\x18\x02 \x01(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\"9\n\x08\x45ntityId\x12-\n\x05\x66ield\x18\x01 \x01(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId\"J\n\x0cTableOptions\x12:\n\x12identifying_fields\x18\x01 \x03(\x0b\x32\x1e.google.privacy.dlp.v2.FieldId*t\n\nLikelihood\x12\x1a\n\x16LIKELIHOOD_UNSPECIFIED\x10\x00\x12\x11\n\rVERY_UNLIKELY\x10\x01\x12\x0c\n\x08UNLIKELY\x10\x02\x12\x0c\n\x08POSSIBLE\x10\x03\x12\n\n\x06LIKELY\x10\x04\x12\x0f\n\x0bVERY_LIKELY\x10\x05*\x9a\x01\n\x08\x46ileType\x12\x19\n\x15\x46ILE_TYPE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x42INARY_FILE\x10\x01\x12\r\n\tTEXT_FILE\x10\x02\x12\t\n\x05IMAGE\x10\x03\x12\x08\n\x04WORD\x10\x05\x12\x07\n\x03PDF\x10\x06\x12\x08\n\x04\x41VRO\x10\x07\x12\x07\n\x03\x43SV\x10\x08\x12\x07\n\x03TSV\x10\t\x12\x0e\n\nPOWERPOINT\x10\x0b\x12\t\n\x05\x45XCEL\x10\x0c\x42\x99\x01\n\x19\x63om.google.privacy.dlp.v2B\nDlpStorageP\x01Z)cloud.google.com/go/dlp/apiv2/dlppb;dlppb\xaa\x02\x13Google.Cloud.Dlp.V2\xca\x02\x13Google\\Cloud\\Dlp\\V2\xea\x02\x16Google::Cloud::Dlp::V2b\x06proto3"

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
    module Dlp
      module V2
        InfoType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.InfoType").msgclass
        SensitivityScore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.SensitivityScore").msgclass
        SensitivityScore::SensitivityScoreLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.SensitivityScore.SensitivityScoreLevel").enummodule
        StoredType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.StoredType").msgclass
        CustomInfoType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType").msgclass
        CustomInfoType::Dictionary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.Dictionary").msgclass
        CustomInfoType::Dictionary::WordList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.Dictionary.WordList").msgclass
        CustomInfoType::Regex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.Regex").msgclass
        CustomInfoType::SurrogateType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.SurrogateType").msgclass
        CustomInfoType::DetectionRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.DetectionRule").msgclass
        CustomInfoType::DetectionRule::Proximity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.DetectionRule.Proximity").msgclass
        CustomInfoType::DetectionRule::LikelihoodAdjustment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.DetectionRule.LikelihoodAdjustment").msgclass
        CustomInfoType::DetectionRule::HotwordRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.DetectionRule.HotwordRule").msgclass
        CustomInfoType::ExclusionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CustomInfoType.ExclusionType").enummodule
        FieldId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.FieldId").msgclass
        PartitionId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.PartitionId").msgclass
        KindExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.KindExpression").msgclass
        DatastoreOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.DatastoreOptions").msgclass
        CloudStorageRegexFileSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStorageRegexFileSet").msgclass
        CloudStorageOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStorageOptions").msgclass
        CloudStorageOptions::FileSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStorageOptions.FileSet").msgclass
        CloudStorageOptions::SampleMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStorageOptions.SampleMethod").enummodule
        CloudStorageFileSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStorageFileSet").msgclass
        CloudStoragePath = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.CloudStoragePath").msgclass
        BigQueryOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.BigQueryOptions").msgclass
        BigQueryOptions::SampleMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.BigQueryOptions.SampleMethod").enummodule
        StorageConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.StorageConfig").msgclass
        StorageConfig::TimespanConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.StorageConfig.TimespanConfig").msgclass
        HybridOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.HybridOptions").msgclass
        BigQueryKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.BigQueryKey").msgclass
        DatastoreKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.DatastoreKey").msgclass
        Key = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.Key").msgclass
        Key::PathElement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.Key.PathElement").msgclass
        RecordKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.RecordKey").msgclass
        BigQueryTable = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.BigQueryTable").msgclass
        TableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.TableReference").msgclass
        BigQueryField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.BigQueryField").msgclass
        EntityId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.EntityId").msgclass
        TableOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.TableOptions").msgclass
        Likelihood = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.Likelihood").enummodule
        FileType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2.FileType").enummodule
      end
    end
  end
end
