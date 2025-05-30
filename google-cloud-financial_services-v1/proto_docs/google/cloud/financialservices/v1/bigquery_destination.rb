# frozen_string_literal: true

# Copyright 2025 Google LLC
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
    module FinancialServices
      module V1
        # BigQueryDestination is a wrapper for BigQuery output information.
        # @!attribute [rw] table_uri
        #   @return [::String]
        #     Optional. BigQuery URI to a table, must be of the form
        #     bq://projectId.bqDatasetId.tableId.
        #     Note that the BigQuery dataset must already exist.
        #     VPC-SC restrictions apply.
        # @!attribute [rw] write_disposition
        #   @return [::Google::Cloud::FinancialServices::V1::BigQueryDestination::WriteDisposition]
        #     Required. Whether or not to overwrite the destination table. By default the
        #     table won't be overwritten and an error will be returned if the table
        #     exists and contains data.
        class BigQueryDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # WriteDisposition controls the behavior when the destination table already
          # exists.
          module WriteDisposition
            # Default behavior is the same as WRITE_EMPTY.
            WRITE_DISPOSITION_UNSPECIFIED = 0

            # If the table already exists and contains data, an error is returned.
            WRITE_EMPTY = 1

            # If the table already exists, the data will be overwritten.
            WRITE_TRUNCATE = 2
          end
        end
      end
    end
  end
end
