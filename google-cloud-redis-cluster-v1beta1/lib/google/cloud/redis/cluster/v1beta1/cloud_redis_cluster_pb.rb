# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/redis/cluster/v1beta1/cloud_redis_cluster.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n<google/cloud/redis/cluster/v1beta1/cloud_redis_cluster.proto\x12\"google.cloud.redis.cluster.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x19google/protobuf/any.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc1\x01\n\x14\x43reateClusterRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x07\x63luster\x18\x03 \x01(\x0b\x32+.google.cloud.redis.cluster.v1beta1.ClusterB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x04 \x01(\t\"w\n\x13ListClustersRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x83\x01\n\x14ListClustersResponse\x12=\n\x08\x63lusters\x18\x01 \x03(\x0b\x32+.google.cloud.redis.cluster.v1beta1.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xa3\x01\n\x14UpdateClusterRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x41\n\x07\x63luster\x18\x02 \x01(\x0b\x32+.google.cloud.redis.cluster.v1beta1.ClusterB\x03\xe0\x41\x02\x12\x12\n\nrequest_id\x18\x03 \x01(\t\"G\n\x11GetClusterRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1credis.googleapis.com/Cluster\"^\n\x14\x44\x65leteClusterRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1credis.googleapis.com/Cluster\x12\x12\n\nrequest_id\x18\x02 \x01(\t\"h\n%GetClusterCertificateAuthorityRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)redis.googleapis.com/CertificateAuthority\"\xf5\r\n\x07\x43luster\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x05state\x18\x04 \x01(\x0e\x32\x31.google.cloud.redis.cluster.v1beta1.Cluster.StateB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x1f\n\rreplica_count\x18\x08 \x01(\x05\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\x12V\n\x12\x61uthorization_mode\x18\x0b \x01(\x0e\x32\x35.google.cloud.redis.cluster.v1beta1.AuthorizationModeB\x03\xe0\x41\x01\x12_\n\x17transit_encryption_mode\x18\x0c \x01(\x0e\x32\x39.google.cloud.redis.cluster.v1beta1.TransitEncryptionModeB\x03\xe0\x41\x01\x12\x19\n\x07size_gb\x18\r \x01(\x05\x42\x03\xe0\x41\x03H\x01\x88\x01\x01\x12\x1d\n\x0bshard_count\x18\x0e \x01(\x05\x42\x03\xe0\x41\x02H\x02\x88\x01\x01\x12G\n\x0bpsc_configs\x18\x0f \x03(\x0b\x32-.google.cloud.redis.cluster.v1beta1.PscConfigB\x03\xe0\x41\x02\x12W\n\x13\x64iscovery_endpoints\x18\x10 \x03(\x0b\x32\x35.google.cloud.redis.cluster.v1beta1.DiscoveryEndpointB\x03\xe0\x41\x03\x12O\n\x0fpsc_connections\x18\x11 \x03(\x0b\x32\x31.google.cloud.redis.cluster.v1beta1.PscConnectionB\x03\xe0\x41\x03\x12N\n\nstate_info\x18\x12 \x01(\x0b\x32\x35.google.cloud.redis.cluster.v1beta1.Cluster.StateInfoB\x03\xe0\x41\x03\x12\x44\n\tnode_type\x18\x13 \x01(\x0e\x32,.google.cloud.redis.cluster.v1beta1.NodeTypeB\x03\xe0\x41\x01\x12]\n\x12persistence_config\x18\x14 \x01(\x0b\x32<.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfigB\x03\xe0\x41\x01\x12Y\n\rredis_configs\x18\x15 \x03(\x0b\x32=.google.cloud.redis.cluster.v1beta1.Cluster.RedisConfigsEntryB\x03\xe0\x41\x01\x12!\n\x0fprecise_size_gb\x18\x16 \x01(\x01\x42\x03\xe0\x41\x03H\x03\x88\x01\x01\x12\x61\n\x18zone_distribution_config\x18\x17 \x01(\x0b\x32:.google.cloud.redis.cluster.v1beta1.ZoneDistributionConfigB\x03\xe0\x41\x01\x12-\n\x1b\x64\x65letion_protection_enabled\x18\x19 \x01(\x08\x42\x03\xe0\x41\x01H\x04\x88\x01\x01\x1a\xef\x01\n\tStateInfo\x12W\n\x0bupdate_info\x18\x01 \x01(\x0b\x32@.google.cloud.redis.cluster.v1beta1.Cluster.StateInfo.UpdateInfoH\x00\x1a\x80\x01\n\nUpdateInfo\x12\x1f\n\x12target_shard_count\x18\x01 \x01(\x05H\x00\x88\x01\x01\x12!\n\x14target_replica_count\x18\x02 \x01(\x05H\x01\x88\x01\x01\x42\x15\n\x13_target_shard_countB\x17\n\x15_target_replica_countB\x06\n\x04info\x1a\x33\n\x11RedisConfigsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"T\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04:]\xea\x41Z\n\x1credis.googleapis.com/Cluster\x12:projects/{project}/locations/{location}/clusters/{cluster}B\x10\n\x0e_replica_countB\n\n\x08_size_gbB\x0e\n\x0c_shard_countB\x12\n\x10_precise_size_gbB\x1e\n\x1c_deletion_protection_enabled\"!\n\tPscConfig\x12\x14\n\x07network\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\x84\x01\n\x11\x44iscoveryEndpoint\x12\x14\n\x07\x61\x64\x64ress\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04port\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x46\n\npsc_config\x18\x03 \x01(\x0b\x32-.google.cloud.redis.cluster.v1beta1.PscConfigB\x03\xe0\x41\x03\"\x8d\x01\n\rPscConnection\x12\x1e\n\x11psc_connection_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x07\x61\x64\x64ress\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x1c\n\x0f\x66orwarding_rule\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nproject_id\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x0f\n\x07network\x18\x05 \x01(\t\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"\xdf\x03\n\x14\x43\x65rtificateAuthority\x12q\n\x11managed_server_ca\x18\x01 \x01(\x0b\x32T.google.cloud.redis.cluster.v1beta1.CertificateAuthority.ManagedCertificateAuthorityH\x00\x12\x11\n\x04name\x18\x02 \x01(\tB\x03\xe0\x41\x08\x1a\xb2\x01\n\x1bManagedCertificateAuthority\x12p\n\x08\x63\x61_certs\x18\x01 \x03(\x0b\x32^.google.cloud.redis.cluster.v1beta1.CertificateAuthority.ManagedCertificateAuthority.CertChain\x1a!\n\tCertChain\x12\x14\n\x0c\x63\x65rtificates\x18\x01 \x03(\t:\x7f\xea\x41|\n)redis.googleapis.com/CertificateAuthority\x12Oprojects/{project}/locations/{location}/clusters/{cluster}/certificateAuthorityB\x0b\n\tserver_ca\"\xa0\x07\n\x18\x43lusterPersistenceConfig\x12_\n\x04mode\x18\x01 \x01(\x0e\x32L.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.PersistenceModeB\x03\xe0\x41\x01\x12_\n\nrdb_config\x18\x02 \x01(\x0b\x32\x46.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.RDBConfigB\x03\xe0\x41\x01\x12_\n\naof_config\x18\x03 \x01(\x0b\x32\x46.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.AOFConfigB\x03\xe0\x41\x01\x1a\xbf\x02\n\tRDBConfig\x12w\n\x13rdb_snapshot_period\x18\x01 \x01(\x0e\x32U.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriodB\x03\xe0\x41\x01\x12@\n\x17rdb_snapshot_start_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"w\n\x0eSnapshotPeriod\x12\x1f\n\x1bSNAPSHOT_PERIOD_UNSPECIFIED\x10\x00\x12\x0c\n\x08ONE_HOUR\x10\x01\x12\r\n\tSIX_HOURS\x10\x02\x12\x10\n\x0cTWELVE_HOURS\x10\x03\x12\x15\n\x11TWENTY_FOUR_HOURS\x10\x04\x1a\xc9\x01\n\tAOFConfig\x12m\n\x0c\x61ppend_fsync\x18\x01 \x01(\x0e\x32R.google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.AOFConfig.AppendFsyncB\x03\xe0\x41\x01\"M\n\x0b\x41ppendFsync\x12\x1c\n\x18\x41PPEND_FSYNC_UNSPECIFIED\x10\x00\x12\x06\n\x02NO\x10\x01\x12\x0c\n\x08\x45VERYSEC\x10\x02\x12\n\n\x06\x41LWAYS\x10\x03\"S\n\x0fPersistenceMode\x12 \n\x1cPERSISTENCE_MODE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x07\n\x03RDB\x10\x02\x12\x07\n\x03\x41OF\x10\x03\"\xf0\x01\n\x16ZoneDistributionConfig\x12\x62\n\x04mode\x18\x01 \x01(\x0e\x32O.google.cloud.redis.cluster.v1beta1.ZoneDistributionConfig.ZoneDistributionModeB\x03\xe0\x41\x01\x12\x11\n\x04zone\x18\x02 \x01(\tB\x03\xe0\x41\x01\"_\n\x14ZoneDistributionMode\x12&\n\"ZONE_DISTRIBUTION_MODE_UNSPECIFIED\x10\x00\x12\x0e\n\nMULTI_ZONE\x10\x01\x12\x0f\n\x0bSINGLE_ZONE\x10\x02*^\n\x11\x41uthorizationMode\x12\x19\n\x15\x41UTH_MODE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x41UTH_MODE_IAM_AUTH\x10\x01\x12\x16\n\x12\x41UTH_MODE_DISABLED\x10\x02*\x8f\x01\n\x08NodeType\x12\x19\n\x15NODE_TYPE_UNSPECIFIED\x10\x00\x12\x1a\n\x16REDIS_SHARED_CORE_NANO\x10\x01\x12\x18\n\x14REDIS_HIGHMEM_MEDIUM\x10\x02\x12\x18\n\x14REDIS_HIGHMEM_XLARGE\x10\x03\x12\x18\n\x14REDIS_STANDARD_SMALL\x10\x04*\x99\x01\n\x15TransitEncryptionMode\x12\'\n#TRANSIT_ENCRYPTION_MODE_UNSPECIFIED\x10\x00\x12$\n TRANSIT_ENCRYPTION_MODE_DISABLED\x10\x01\x12\x31\n-TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION\x10\x02\x32\x90\x0b\n\x11\x43loudRedisCluster\x12\xc5\x01\n\x0cListClusters\x12\x37.google.cloud.redis.cluster.v1beta1.ListClustersRequest\x1a\x38.google.cloud.redis.cluster.v1beta1.ListClustersResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1beta1/{parent=projects/*/locations/*}/clusters\x12\xb2\x01\n\nGetCluster\x12\x35.google.cloud.redis.cluster.v1beta1.GetClusterRequest\x1a+.google.cloud.redis.cluster.v1beta1.Cluster\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1beta1/{name=projects/*/locations/*/clusters/*}\x12\xec\x01\n\rUpdateCluster\x12\x38.google.cloud.redis.cluster.v1beta1.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1e\n\x07\x43luster\x12\x13google.protobuf.Any\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02\x44\x32\x39/v1beta1/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\x12\xd9\x01\n\rDeleteCluster\x12\x38.google.cloud.redis.cluster.v1beta1.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"o\xca\x41,\n\x15google.protobuf.Empty\x12\x13google.protobuf.Any\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33*1/v1beta1/{name=projects/*/locations/*/clusters/*}\x12\xe9\x01\n\rCreateCluster\x12\x38.google.cloud.redis.cluster.v1beta1.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x1e\n\x07\x43luster\x12\x13google.protobuf.Any\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02<\"1/v1beta1/{parent=projects/*/locations/*}/clusters:\x07\x63luster\x12\xfc\x01\n\x1eGetClusterCertificateAuthority\x12I.google.cloud.redis.cluster.v1beta1.GetClusterCertificateAuthorityRequest\x1a\x38.google.cloud.redis.cluster.v1beta1.CertificateAuthority\"U\xda\x41\x04name\x82\xd3\xe4\x93\x02H\x12\x46/v1beta1/{name=projects/*/locations/*/clusters/*/certificateAuthority}\x1aH\xca\x41\x14redis.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xad\x01\n&com.google.cloud.redis.cluster.v1beta1B\x16\x43loudRedisClusterProtoP\x01Z@cloud.google.com/go/redis/cluster/apiv1beta1/clusterpb;clusterpb\xea\x02&Google::Cloud::Redis::Cluster::V1beta1b\x06proto3"

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
    module Redis
      module Cluster
        module V1beta1
          CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.CreateClusterRequest").msgclass
          ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ListClustersRequest").msgclass
          ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ListClustersResponse").msgclass
          UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.UpdateClusterRequest").msgclass
          GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.GetClusterRequest").msgclass
          DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.DeleteClusterRequest").msgclass
          GetClusterCertificateAuthorityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.GetClusterCertificateAuthorityRequest").msgclass
          Cluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.Cluster").msgclass
          Cluster::StateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.Cluster.StateInfo").msgclass
          Cluster::StateInfo::UpdateInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.Cluster.StateInfo.UpdateInfo").msgclass
          Cluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.Cluster.State").enummodule
          PscConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.PscConfig").msgclass
          DiscoveryEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.DiscoveryEndpoint").msgclass
          PscConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.PscConnection").msgclass
          OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.OperationMetadata").msgclass
          CertificateAuthority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.CertificateAuthority").msgclass
          CertificateAuthority::ManagedCertificateAuthority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.CertificateAuthority.ManagedCertificateAuthority").msgclass
          CertificateAuthority::ManagedCertificateAuthority::CertChain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.CertificateAuthority.ManagedCertificateAuthority.CertChain").msgclass
          ClusterPersistenceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig").msgclass
          ClusterPersistenceConfig::RDBConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.RDBConfig").msgclass
          ClusterPersistenceConfig::RDBConfig::SnapshotPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.RDBConfig.SnapshotPeriod").enummodule
          ClusterPersistenceConfig::AOFConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.AOFConfig").msgclass
          ClusterPersistenceConfig::AOFConfig::AppendFsync = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.AOFConfig.AppendFsync").enummodule
          ClusterPersistenceConfig::PersistenceMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ClusterPersistenceConfig.PersistenceMode").enummodule
          ZoneDistributionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ZoneDistributionConfig").msgclass
          ZoneDistributionConfig::ZoneDistributionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.ZoneDistributionConfig.ZoneDistributionMode").enummodule
          AuthorizationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.AuthorizationMode").enummodule
          NodeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.NodeType").enummodule
          TransitEncryptionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.redis.cluster.v1beta1.TransitEncryptionMode").enummodule
        end
      end
    end
  end
end
