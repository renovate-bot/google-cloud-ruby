# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module DocumentAI
      module V1beta3
        # Payload message of raw document content (bytes).
        # @!attribute [rw] content
        #   @return [::String]
        #     Inline document content.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     An IANA MIME type (RFC6838) indicating the nature and format of the
        #     {::Google::Cloud::DocumentAI::V1beta3::RawDocument#content content}.
        class RawDocument
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies a document stored on Cloud Storage.
        # @!attribute [rw] gcs_uri
        #   @return [::String]
        #     The Cloud Storage object uri.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     An IANA MIME type (RFC6838) of the content.
        class GcsDocument
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies a set of documents on Cloud Storage.
        # @!attribute [rw] documents
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::GcsDocument>]
        #     The list of documents.
        class GcsDocuments
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies all documents on Cloud Storage with a common prefix.
        # @!attribute [rw] gcs_uri_prefix
        #   @return [::String]
        #     The URI prefix.
        class GcsPrefix
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The common config to specify a set of documents used as input.
        # @!attribute [rw] gcs_prefix
        #   @return [::Google::Cloud::DocumentAI::V1beta3::GcsPrefix]
        #     The set of documents that match the specified Cloud Storage `gcs_prefix`.
        # @!attribute [rw] gcs_documents
        #   @return [::Google::Cloud::DocumentAI::V1beta3::GcsDocuments]
        #     The set of documents individually specified on Cloud Storage.
        class BatchDocumentsInputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config that controls the output of documents. All documents will be written
        # as a JSON file.
        # @!attribute [rw] gcs_output_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentOutputConfig::GcsOutputConfig]
        #     Output config to write the results to Cloud Storage.
        class DocumentOutputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The configuration used when outputting documents.
          # @!attribute [rw] gcs_uri
          #   @return [::String]
          #     The Cloud Storage uri (a directory) of the output.
          # @!attribute [rw] field_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Specifies which fields to include in the output documents.
          #     Only supports top level document and pages field so it must be in the
          #     form of `{document_field_name}` or `pages.{page_field_name}`.
          # @!attribute [rw] sharding_config
          #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentOutputConfig::GcsOutputConfig::ShardingConfig]
          #     Specifies the sharding config for the output document.
          class GcsOutputConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The sharding config for the output document.
            # @!attribute [rw] pages_per_shard
            #   @return [::Integer]
            #     The number of pages per shard.
            # @!attribute [rw] pages_overlap
            #   @return [::Integer]
            #     The number of overlapping pages between consecutive shards.
            class ShardingConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Config for Document OCR.
        # @!attribute [rw] enable_native_pdf_parsing
        #   @return [::Boolean]
        #     Enables special handling for PDFs with existing text information. Results
        #     in better text extraction quality in such PDF inputs.
        class OcrConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
