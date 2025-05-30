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
    module Dataplex
      module V1
        # Spec for a data discovery scan.
        # @!attribute [rw] bigquery_publishing_config
        #   @return [::Google::Cloud::Dataplex::V1::DataDiscoverySpec::BigQueryPublishingConfig]
        #     Optional. Configuration for metadata publishing.
        # @!attribute [rw] storage_config
        #   @return [::Google::Cloud::Dataplex::V1::DataDiscoverySpec::StorageConfig]
        #     Cloud Storage related configurations.
        class DataDiscoverySpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes BigQuery publishing configurations.
          # @!attribute [rw] table_type
          #   @return [::Google::Cloud::Dataplex::V1::DataDiscoverySpec::BigQueryPublishingConfig::TableType]
          #     Optional. Determines whether to  publish discovered tables as BigLake
          #     external tables or non-BigLake external tables.
          # @!attribute [rw] connection
          #   @return [::String]
          #     Optional. The BigQuery connection used to create BigLake tables.
          #     Must be in the form
          #     `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
          # @!attribute [rw] location
          #   @return [::String]
          #     Optional. The location of the BigQuery dataset to publish BigLake
          #     external or non-BigLake external tables to.
          #     1. If the Cloud Storage bucket is located in a multi-region bucket, then
          #     BigQuery dataset can be in the same multi-region bucket or any single
          #     region that is included in the same multi-region bucket. The datascan can
          #     be created in any single region that is included in the same multi-region
          #     bucket
          #     2. If the Cloud Storage bucket is located in a dual-region bucket, then
          #     BigQuery dataset can be located in regions that are included in the
          #     dual-region bucket, or in a multi-region that includes the dual-region.
          #     The datascan can be created in any single region that is included in the
          #     same dual-region bucket.
          #     3. If the Cloud Storage bucket is located in a single region, then
          #     BigQuery dataset can be in the same single region or any multi-region
          #     bucket that includes the same single region. The datascan will be created
          #     in the same single region as the bucket.
          #     4. If the BigQuery dataset is in single region, it must be in the same
          #     single region as the datascan.
          #
          #     For supported values, refer to
          #     https://cloud.google.com/bigquery/docs/locations#supported_locations.
          class BigQueryPublishingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Determines how discovered tables are published.
            module TableType
              # Table type unspecified.
              TABLE_TYPE_UNSPECIFIED = 0

              # Default. Discovered tables are published as BigQuery external tables
              # whose data is accessed using the credentials of the user querying the
              # table.
              EXTERNAL = 1

              # Discovered tables are published as BigLake external tables whose data
              # is accessed using the credentials of the associated BigQuery
              # connection.
              BIGLAKE = 2
            end
          end

          # Configurations related to Cloud Storage as the data source.
          # @!attribute [rw] include_patterns
          #   @return [::Array<::String>]
          #     Optional. Defines the data to include during discovery when only a subset
          #     of the data should be considered. Provide a list of patterns that
          #     identify the data to include. For Cloud Storage bucket assets, these
          #     patterns are interpreted as glob patterns used to match object names. For
          #     BigQuery dataset assets, these patterns are interpreted as patterns to
          #     match table names.
          # @!attribute [rw] exclude_patterns
          #   @return [::Array<::String>]
          #     Optional. Defines the data to exclude during discovery. Provide a list of
          #     patterns that identify the data to exclude. For Cloud Storage bucket
          #     assets, these patterns are interpreted as glob patterns used to match
          #     object names. For BigQuery dataset assets, these patterns are interpreted
          #     as patterns to match table names.
          # @!attribute [rw] csv_options
          #   @return [::Google::Cloud::Dataplex::V1::DataDiscoverySpec::StorageConfig::CsvOptions]
          #     Optional. Configuration for CSV data.
          # @!attribute [rw] json_options
          #   @return [::Google::Cloud::Dataplex::V1::DataDiscoverySpec::StorageConfig::JsonOptions]
          #     Optional. Configuration for JSON data.
          class StorageConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Describes CSV and similar semi-structured data formats.
            # @!attribute [rw] header_rows
            #   @return [::Integer]
            #     Optional. The number of rows to interpret as header rows that should be
            #     skipped when reading data rows.
            # @!attribute [rw] delimiter
            #   @return [::String]
            #     Optional. The delimiter that is used to separate values. The default is
            #     `,` (comma).
            # @!attribute [rw] encoding
            #   @return [::String]
            #     Optional. The character encoding of the data. The default is UTF-8.
            # @!attribute [rw] type_inference_disabled
            #   @return [::Boolean]
            #     Optional. Whether to disable the inference of data types for CSV data.
            #     If true, all columns are registered as strings.
            # @!attribute [rw] quote
            #   @return [::String]
            #     Optional. The character used to quote column values. Accepts `"`
            #     (double quotation mark) or `'` (single quotation mark). If unspecified,
            #     defaults to `"` (double quotation mark).
            class CsvOptions
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Describes JSON data format.
            # @!attribute [rw] encoding
            #   @return [::String]
            #     Optional. The character encoding of the data. The default is UTF-8.
            # @!attribute [rw] type_inference_disabled
            #   @return [::Boolean]
            #     Optional. Whether to disable the inference of data types for JSON data.
            #     If true, all columns are registered as their primitive types
            #     (strings, number, or boolean).
            class JsonOptions
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # The output of a data discovery scan.
        # @!attribute [r] bigquery_publishing
        #   @return [::Google::Cloud::Dataplex::V1::DataDiscoveryResult::BigQueryPublishing]
        #     Output only. Configuration for metadata publishing.
        # @!attribute [r] scan_statistics
        #   @return [::Google::Cloud::Dataplex::V1::DataDiscoveryResult::ScanStatistics]
        #     Output only. Describes result statistics of a data scan discovery job.
        class DataDiscoveryResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes BigQuery publishing configurations.
          # @!attribute [r] dataset
          #   @return [::String]
          #     Output only. The BigQuery dataset the discovered tables are published to.
          # @!attribute [r] location
          #   @return [::String]
          #     Output only. The location of the BigQuery publishing dataset.
          class BigQueryPublishing
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes result statistics of a data scan discovery job.
          # @!attribute [rw] scanned_file_count
          #   @return [::Integer]
          #     The number of files scanned.
          # @!attribute [rw] data_processed_bytes
          #   @return [::Integer]
          #     The data processed in bytes.
          # @!attribute [rw] files_excluded
          #   @return [::Integer]
          #     The number of files excluded.
          # @!attribute [rw] tables_created
          #   @return [::Integer]
          #     The number of tables created.
          # @!attribute [rw] tables_deleted
          #   @return [::Integer]
          #     The number of tables deleted.
          # @!attribute [rw] tables_updated
          #   @return [::Integer]
          #     The number of tables updated.
          # @!attribute [rw] filesets_created
          #   @return [::Integer]
          #     The number of filesets created.
          # @!attribute [rw] filesets_deleted
          #   @return [::Integer]
          #     The number of filesets deleted.
          # @!attribute [rw] filesets_updated
          #   @return [::Integer]
          #     The number of filesets updated.
          class ScanStatistics
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
