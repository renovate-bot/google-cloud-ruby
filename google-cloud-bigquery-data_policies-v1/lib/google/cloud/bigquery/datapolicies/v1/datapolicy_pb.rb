# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datapolicies/v1/datapolicy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n6google/cloud/bigquery/datapolicies/v1/datapolicy.proto\x12%google.cloud.bigquery.datapolicies.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xae\x01\n\x17\x43reateDataPolicyRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\x12,bigquerydatapolicy.googleapis.com/DataPolicy\x12L\n\x0b\x64\x61ta_policy\x18\x02 \x01(\x0b\x32\x31.google.cloud.bigquery.datapolicies.v1.DataPolicyB\x04\xe2\x41\x01\x02\"\x98\x01\n\x17UpdateDataPolicyRequest\x12L\n\x0b\x64\x61ta_policy\x18\x01 \x01(\x0b\x32\x31.google.cloud.bigquery.datapolicies.v1.DataPolicyB\x04\xe2\x41\x01\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"O\n\x17RenameDataPolicyRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12 \n\x12new_data_policy_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\"^\n\x17\x44\x65leteDataPolicyRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,bigquerydatapolicy.googleapis.com/DataPolicy\"[\n\x14GetDataPolicyRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\n,bigquerydatapolicy.googleapis.com/DataPolicy\"\x97\x01\n\x17ListDataPoliciesRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\x12,bigquerydatapolicy.googleapis.com/DataPolicy\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"}\n\x18ListDataPoliciesResponse\x12H\n\rdata_policies\x18\x01 \x03(\x0b\x32\x31.google.cloud.bigquery.datapolicies.v1.DataPolicy\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x85\x04\n\nDataPolicy\x12\x14\n\npolicy_tag\x18\x04 \x01(\tH\x00\x12W\n\x13\x64\x61ta_masking_policy\x18\x05 \x01(\x0b\x32\x38.google.cloud.bigquery.datapolicies.v1.DataMaskingPolicyH\x01\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12Z\n\x10\x64\x61ta_policy_type\x18\x02 \x01(\x0e\x32@.google.cloud.bigquery.datapolicies.v1.DataPolicy.DataPolicyType\x12\x16\n\x0e\x64\x61ta_policy_id\x18\x03 \x01(\t\"m\n\x0e\x44\x61taPolicyType\x12 \n\x1c\x44\x41TA_POLICY_TYPE_UNSPECIFIED\x10\x00\x12 \n\x1c\x43OLUMN_LEVEL_SECURITY_POLICY\x10\x03\x12\x17\n\x13\x44\x41TA_MASKING_POLICY\x10\x02:u\xea\x41r\n,bigquerydatapolicy.googleapis.com/DataPolicy\x12\x42projects/{project}/locations/{location}/dataPolicies/{data_policy}B\x10\n\x0ematching_labelB\x08\n\x06policy\"\xfd\x02\n\x11\x44\x61taMaskingPolicy\x12n\n\x15predefined_expression\x18\x01 \x01(\x0e\x32M.google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy.PredefinedExpressionH\x00\x12\x11\n\x07routine\x18\x03 \x01(\tH\x00\"\xce\x01\n\x14PredefinedExpression\x12%\n!PREDEFINED_EXPRESSION_UNSPECIFIED\x10\x00\x12\n\n\x06SHA256\x10\x03\x12\x0f\n\x0b\x41LWAYS_NULL\x10\x05\x12\x19\n\x15\x44\x45\x46\x41ULT_MASKING_VALUE\x10\x07\x12\x18\n\x14LAST_FOUR_CHARACTERS\x10\t\x12\x19\n\x15\x46IRST_FOUR_CHARACTERS\x10\n\x12\x0e\n\nEMAIL_MASK\x10\x0c\x12\x12\n\x0e\x44\x41TE_YEAR_MASK\x10\rB\x14\n\x12masking_expression2\x90\x0f\n\x11\x44\x61taPolicyService\x12\xe1\x01\n\x10\x43reateDataPolicy\x12>.google.cloud.bigquery.datapolicies.v1.CreateDataPolicyRequest\x1a\x31.google.cloud.bigquery.datapolicies.v1.DataPolicy\"Z\xda\x41\x12parent,data_policy\x82\xd3\xe4\x93\x02?\"0/v1/{parent=projects/*/locations/*}/dataPolicies:\x0b\x64\x61ta_policy\x12\xf2\x01\n\x10UpdateDataPolicy\x12>.google.cloud.bigquery.datapolicies.v1.UpdateDataPolicyRequest\x1a\x31.google.cloud.bigquery.datapolicies.v1.DataPolicy\"k\xda\x41\x17\x64\x61ta_policy,update_mask\x82\xd3\xe4\x93\x02K2</v1/{data_policy.name=projects/*/locations/*/dataPolicies/*}:\x0b\x64\x61ta_policy\x12\xe3\x01\n\x10RenameDataPolicy\x12>.google.cloud.bigquery.datapolicies.v1.RenameDataPolicyRequest\x1a\x31.google.cloud.bigquery.datapolicies.v1.DataPolicy\"\\\xda\x41\x17name,new_data_policy_id\x82\xd3\xe4\x93\x02<\"7/v1/{name=projects/*/locations/*/dataPolicies/*}:rename:\x01*\x12\xab\x01\n\x10\x44\x65leteDataPolicy\x12>.google.cloud.bigquery.datapolicies.v1.DeleteDataPolicyRequest\x1a\x16.google.protobuf.Empty\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/dataPolicies/*}\x12\xc0\x01\n\rGetDataPolicy\x12;.google.cloud.bigquery.datapolicies.v1.GetDataPolicyRequest\x1a\x31.google.cloud.bigquery.datapolicies.v1.DataPolicy\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/dataPolicies/*}\x12\xd6\x01\n\x10ListDataPolicies\x12>.google.cloud.bigquery.datapolicies.v1.ListDataPoliciesRequest\x1a?.google.cloud.bigquery.datapolicies.v1.ListDataPoliciesResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/dataPolicies\x12\x97\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"L\x82\xd3\xe4\x93\x02\x46\"A/v1/{resource=projects/*/locations/*/dataPolicies/*}:getIamPolicy:\x01*\x12\x97\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"L\x82\xd3\xe4\x93\x02\x46\"A/v1/{resource=projects/*/locations/*/dataPolicies/*}:setIamPolicy:\x01*\x12\xbd\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"R\x82\xd3\xe4\x93\x02L\"G/v1/{resource=projects/*/locations/*/dataPolicies/*}:testIamPermissions:\x01*\x1a~\xca\x41!bigquerydatapolicy.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/cloud-platformB\x89\x02\n)com.google.cloud.bigquery.datapolicies.v1B\x0f\x44\x61taPolicyProtoP\x01ZMcloud.google.com/go/bigquery/datapolicies/apiv1/datapoliciespb;datapoliciespb\xaa\x02%Google.Cloud.BigQuery.DataPolicies.V1\xca\x02%Google\\Cloud\\BigQuery\\DataPolicies\\V1\xea\x02)Google::Cloud::Bigquery::DataPolicies::V1b\x06proto3"

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
      module DataPolicies
        module V1
          CreateDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.CreateDataPolicyRequest").msgclass
          UpdateDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.UpdateDataPolicyRequest").msgclass
          RenameDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.RenameDataPolicyRequest").msgclass
          DeleteDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DeleteDataPolicyRequest").msgclass
          GetDataPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.GetDataPolicyRequest").msgclass
          ListDataPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.ListDataPoliciesRequest").msgclass
          ListDataPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.ListDataPoliciesResponse").msgclass
          DataPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataPolicy").msgclass
          DataPolicy::DataPolicyType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataPolicy.DataPolicyType").enummodule
          DataMaskingPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy").msgclass
          DataMaskingPolicy::PredefinedExpression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datapolicies.v1.DataMaskingPolicy.PredefinedExpression").enummodule
        end
      end
    end
  end
end
