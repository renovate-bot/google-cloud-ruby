# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#create_rag_corpus VertexRagDataService.CreateRagCorpus}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the RagCorpus in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] rag_corpus
        #   @return [::Google::Cloud::AIPlatform::V1::RagCorpus]
        #     Required. The RagCorpus to create.
        class CreateRagCorpusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#get_rag_corpus VertexRagDataService.GetRagCorpus}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the RagCorpus resource.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
        class GetRagCorpusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_corpora VertexRagDataService.ListRagCorpora}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     RagCorpora. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListRagCorporaResponse#next_page_token ListRagCorporaResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_corpora VertexRagDataService.ListRagCorpora}
        #     call.
        class ListRagCorporaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_corpora VertexRagDataService.ListRagCorpora}.
        # @!attribute [rw] rag_corpora
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::RagCorpus>]
        #     List of RagCorpora in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListRagCorporaRequest#page_token ListRagCorporaRequest.page_token}
        #     to obtain that page.
        class ListRagCorporaResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#delete_rag_corpus VertexRagDataService.DeleteRagCorpus}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the RagCorpus resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Optional. If set to true, any RagFiles in this RagCorpus will also be
        #     deleted. Otherwise, the request will only work if the RagCorpus has no
        #     RagFiles.
        class DeleteRagCorpusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#upload_rag_file VertexRagDataService.UploadRagFile}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the RagCorpus resource into which to upload the file.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
        # @!attribute [rw] rag_file
        #   @return [::Google::Cloud::AIPlatform::V1::RagFile]
        #     Required. The RagFile to upload.
        # @!attribute [rw] upload_rag_file_config
        #   @return [::Google::Cloud::AIPlatform::V1::UploadRagFileConfig]
        #     Required. The config for the RagFiles to be uploaded into the RagCorpus.
        #     {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#upload_rag_file VertexRagDataService.UploadRagFile}.
        class UploadRagFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#upload_rag_file VertexRagDataService.UploadRagFile}.
        # @!attribute [rw] rag_file
        #   @return [::Google::Cloud::AIPlatform::V1::RagFile]
        #     The RagFile that had been uploaded into the RagCorpus.
        #
        #     Note: The following fields are mutually exclusive: `rag_file`, `error`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     The error that occurred while processing the RagFile.
        #
        #     Note: The following fields are mutually exclusive: `error`, `rag_file`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class UploadRagFileResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#import_rag_files VertexRagDataService.ImportRagFiles}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the RagCorpus resource into which to import files.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
        # @!attribute [rw] import_rag_files_config
        #   @return [::Google::Cloud::AIPlatform::V1::ImportRagFilesConfig]
        #     Required. The config for the RagFiles to be synced and imported into the
        #     RagCorpus.
        #     {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#import_rag_files VertexRagDataService.ImportRagFiles}.
        class ImportRagFilesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#import_rag_files VertexRagDataService.ImportRagFiles}.
        # @!attribute [rw] partial_failures_gcs_path
        #   @return [::String]
        #     The Google Cloud Storage path into which the partial failures were
        #     written.
        #
        #     Note: The following fields are mutually exclusive: `partial_failures_gcs_path`, `partial_failures_bigquery_table`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] partial_failures_bigquery_table
        #   @return [::String]
        #     The BigQuery table into which the partial failures were written.
        #
        #     Note: The following fields are mutually exclusive: `partial_failures_bigquery_table`, `partial_failures_gcs_path`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] imported_rag_files_count
        #   @return [::Integer]
        #     The number of RagFiles that had been imported into the RagCorpus.
        # @!attribute [rw] failed_rag_files_count
        #   @return [::Integer]
        #     The number of RagFiles that had failed while importing into the RagCorpus.
        # @!attribute [rw] skipped_rag_files_count
        #   @return [::Integer]
        #     The number of RagFiles that was skipped while importing into the RagCorpus.
        class ImportRagFilesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#get_rag_file VertexRagDataService.GetRagFile}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the RagFile resource.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}/ragFiles/{rag_file}`
        class GetRagFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_files VertexRagDataService.ListRagFiles}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the RagCorpus from which to list the
        #     RagFiles. Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListRagFilesResponse#next_page_token ListRagFilesResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_files VertexRagDataService.ListRagFiles}
        #     call.
        class ListRagFilesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#list_rag_files VertexRagDataService.ListRagFiles}.
        # @!attribute [rw] rag_files
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::RagFile>]
        #     List of RagFiles in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListRagFilesRequest#page_token ListRagFilesRequest.page_token}
        #     to obtain that page.
        class ListRagFilesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#delete_rag_file VertexRagDataService.DeleteRagFile}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the RagFile resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/ragCorpora/{rag_corpus}/ragFiles/{rag_file}`
        class DeleteRagFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#create_rag_corpus VertexRagDataService.CreateRagCorpus}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class CreateRagCorpusOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#get_rag_engine_config VertexRagDataService.GetRagEngineConfig}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the RagEngineConfig resource.
        #     Format:
        #     `projects/{project}/locations/{location}/ragEngineConfig`
        class GetRagEngineConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#update_rag_corpus VertexRagDataService.UpdateRagCorpus}.
        # @!attribute [rw] rag_corpus
        #   @return [::Google::Cloud::AIPlatform::V1::RagCorpus]
        #     Required. The RagCorpus which replaces the resource on the server.
        class UpdateRagCorpusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#update_rag_corpus VertexRagDataService.UpdateRagCorpus}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class UpdateRagCorpusOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#import_rag_files VertexRagDataService.ImportRagFiles}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] rag_corpus_id
        #   @return [::Integer]
        #     The resource ID of RagCorpus that this operation is executed on.
        # @!attribute [r] import_rag_files_config
        #   @return [::Google::Cloud::AIPlatform::V1::ImportRagFilesConfig]
        #     Output only. The config that was passed in the ImportRagFilesRequest.
        # @!attribute [rw] progress_percentage
        #   @return [::Integer]
        #     The progress percentage of the operation. Value is in the range [0, 100].
        #     This percentage is calculated as follows:
        #        progress_percentage = 100 * (successes + failures + skips) / total
        class ImportRagFilesOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#update_rag_engine_config VertexRagDataService.UpdateRagEngineConfig}.
        # @!attribute [rw] rag_engine_config
        #   @return [::Google::Cloud::AIPlatform::V1::RagEngineConfig]
        #     Required. The updated RagEngineConfig.
        #
        #     NOTE: Downgrading your RagManagedDb's ComputeTier could temporarily
        #     increase request latencies until the operation is fully complete.
        class UpdateRagEngineConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::VertexRagDataService::Client#update_rag_engine_config VertexRagDataService.UpdateRagEngineConfig}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class UpdateRagEngineConfigOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
