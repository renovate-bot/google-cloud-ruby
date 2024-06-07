# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/redis/cluster/v1beta1/cloud_redis_cluster.proto for package 'Google.Cloud.Redis.Cluster.V1beta1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/redis/cluster/v1beta1/cloud_redis_cluster_pb'

module Google
  module Cloud
    module Redis
      module Cluster
        module V1beta1
          module CloudRedisCluster
            # Configures and manages Cloud Memorystore for Redis clusters
            #
            # Google Cloud Memorystore for Redis Cluster
            #
            # The `redis.googleapis.com` service implements the Google Cloud Memorystore
            # for Redis API and defines the following resource model for managing Redis
            # clusters:
            # * The service works with a collection of cloud projects, named: `/projects/*`
            # * Each project has a collection of available locations, named: `/locations/*`
            # * Each location has a collection of Redis clusters, named: `/clusters/*`
            # * As such, Redis clusters are resources of the form:
            #   `/projects/{project_id}/locations/{location_id}/clusters/{instance_id}`
            #
            # Note that location_id must be a GCP `region`; for example:
            # * `projects/redpepper-1290/locations/us-central1/clusters/my-redis`
            #
            # We use API version selector for Flex APIs
            # * The versioning strategy is release-based versioning
            # * Our backend CLH only deals with the superset version (called v1main)
            # * Existing backend for Redis Gen1 and MRR is not touched.
            # * More details in go/redis-flex-api-versioning
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.redis.cluster.v1beta1.CloudRedisCluster'

              # Lists all Redis clusters owned by a project in either the specified
              # location (region) or all locations.
              #
              # The location should have the following format:
              #
              # * `projects/{project_id}/locations/{location_id}`
              #
              # If `location_id` is specified as `-` (wildcard), then all regions
              # available to the project are queried, and the results are aggregated.
              rpc :ListClusters, ::Google::Cloud::Redis::Cluster::V1beta1::ListClustersRequest, ::Google::Cloud::Redis::Cluster::V1beta1::ListClustersResponse
              # Gets the details of a specific Redis cluster.
              rpc :GetCluster, ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterRequest, ::Google::Cloud::Redis::Cluster::V1beta1::Cluster
              # Updates the metadata and configuration of a specific Redis cluster.
              #
              # Completed longrunning.Operation will contain the new cluster object
              # in the response field. The returned operation is automatically deleted
              # after a few hours, so there is no need to call DeleteOperation.
              rpc :UpdateCluster, ::Google::Cloud::Redis::Cluster::V1beta1::UpdateClusterRequest, ::Google::Longrunning::Operation
              # Deletes a specific Redis cluster. Cluster stops serving and data is
              # deleted.
              rpc :DeleteCluster, ::Google::Cloud::Redis::Cluster::V1beta1::DeleteClusterRequest, ::Google::Longrunning::Operation
              # Creates a Redis cluster based on the specified properties.
              # The creation is executed asynchronously and callers may check the returned
              # operation to track its progress. Once the operation is completed the Redis
              # cluster will be fully functional. The completed longrunning.Operation will
              # contain the new cluster object in the response field.
              #
              # The returned operation is automatically deleted after a few hours, so there
              # is no need to call DeleteOperation.
              rpc :CreateCluster, ::Google::Cloud::Redis::Cluster::V1beta1::CreateClusterRequest, ::Google::Longrunning::Operation
              # Gets the details of certificate authority information for Redis cluster.
              rpc :GetClusterCertificateAuthority, ::Google::Cloud::Redis::Cluster::V1beta1::GetClusterCertificateAuthorityRequest, ::Google::Cloud::Redis::Cluster::V1beta1::CertificateAuthority
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
