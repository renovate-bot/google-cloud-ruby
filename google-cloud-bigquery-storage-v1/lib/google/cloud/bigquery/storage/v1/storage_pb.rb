# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/storage/v1/storage.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/bigquery/storage/v1/arrow_pb'
require 'google/cloud/bigquery/storage/v1/avro_pb'
require 'google/cloud/bigquery/storage/v1/protobuf_pb'
require 'google/cloud/bigquery/storage/v1/stream_pb'
require 'google/cloud/bigquery/storage/v1/table_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n.google/cloud/bigquery/storage/v1/storage.proto\x12 google.cloud.bigquery.storage.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/bigquery/storage/v1/arrow.proto\x1a+google/cloud/bigquery/storage/v1/avro.proto\x1a/google/cloud/bigquery/storage/v1/protobuf.proto\x1a-google/cloud/bigquery/storage/v1/stream.proto\x1a,google/cloud/bigquery/storage/v1/table.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x17google/rpc/status.proto\"\xe7\x01\n\x18\x43reateReadSessionRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12H\n\x0cread_session\x18\x02 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.ReadSessionB\x03\xe0\x41\x02\x12\x18\n\x10max_stream_count\x18\x03 \x01(\x05\x12\"\n\x1apreferred_min_stream_count\x18\x04 \x01(\x05\"i\n\x0fReadRowsRequest\x12\x46\n\x0bread_stream\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)bigquerystorage.googleapis.com/ReadStream\x12\x0e\n\x06offset\x18\x02 \x01(\x03\")\n\rThrottleState\x12\x18\n\x10throttle_percent\x18\x01 \x01(\x05\"\x97\x01\n\x0bStreamStats\x12H\n\x08progress\x18\x02 \x01(\x0b\x32\x36.google.cloud.bigquery.storage.v1.StreamStats.Progress\x1a>\n\x08Progress\x12\x19\n\x11\x61t_response_start\x18\x01 \x01(\x01\x12\x17\n\x0f\x61t_response_end\x18\x02 \x01(\x01\"\xac\x04\n\x10ReadRowsResponse\x12?\n\tavro_rows\x18\x03 \x01(\x0b\x32*.google.cloud.bigquery.storage.v1.AvroRowsH\x00\x12P\n\x12\x61rrow_record_batch\x18\x04 \x01(\x0b\x32\x32.google.cloud.bigquery.storage.v1.ArrowRecordBatchH\x00\x12\x11\n\trow_count\x18\x06 \x01(\x03\x12<\n\x05stats\x18\x02 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.StreamStats\x12G\n\x0ethrottle_state\x18\x05 \x01(\x0b\x32/.google.cloud.bigquery.storage.v1.ThrottleState\x12H\n\x0b\x61vro_schema\x18\x07 \x01(\x0b\x32,.google.cloud.bigquery.storage.v1.AvroSchemaB\x03\xe0\x41\x03H\x01\x12J\n\x0c\x61rrow_schema\x18\x08 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.ArrowSchemaB\x03\xe0\x41\x03H\x01\x12(\n\x16uncompressed_byte_size\x18\t \x01(\x03\x42\x03\xe0\x41\x01H\x02\x88\x01\x01\x42\x06\n\x04rowsB\x08\n\x06schemaB\x19\n\x17_uncompressed_byte_size\"k\n\x16SplitReadStreamRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)bigquerystorage.googleapis.com/ReadStream\x12\x10\n\x08\x66raction\x18\x02 \x01(\x01\"\xa7\x01\n\x17SplitReadStreamResponse\x12\x44\n\x0eprimary_stream\x18\x01 \x01(\x0b\x32,.google.cloud.bigquery.storage.v1.ReadStream\x12\x46\n\x10remainder_stream\x18\x02 \x01(\x0b\x32,.google.cloud.bigquery.storage.v1.ReadStream\"\x9b\x01\n\x18\x43reateWriteStreamRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x62igquery.googleapis.com/Table\x12H\n\x0cwrite_stream\x18\x02 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.WriteStreamB\x03\xe0\x41\x02\"\xf8\x08\n\x11\x41ppendRowsRequest\x12H\n\x0cwrite_stream\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*bigquerystorage.googleapis.com/WriteStream\x12+\n\x06offset\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12S\n\nproto_rows\x18\x04 \x01(\x0b\x32=.google.cloud.bigquery.storage.v1.AppendRowsRequest.ProtoDataH\x00\x12S\n\narrow_rows\x18\x05 \x01(\x0b\x32=.google.cloud.bigquery.storage.v1.AppendRowsRequest.ArrowDataH\x00\x12\x10\n\x08trace_id\x18\x06 \x01(\t\x12{\n\x1dmissing_value_interpretations\x18\x07 \x03(\x0b\x32T.google.cloud.bigquery.storage.v1.AppendRowsRequest.MissingValueInterpretationsEntry\x12\x81\x01\n$default_missing_value_interpretation\x18\x08 \x01(\x0e\x32N.google.cloud.bigquery.storage.v1.AppendRowsRequest.MissingValueInterpretationB\x03\xe0\x41\x01\x1a\x93\x01\n\tArrowData\x12\x44\n\rwriter_schema\x18\x01 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.ArrowSchema\x12@\n\x04rows\x18\x02 \x01(\x0b\x32\x32.google.cloud.bigquery.storage.v1.ArrowRecordBatch\x1a\x8c\x01\n\tProtoData\x12\x44\n\rwriter_schema\x18\x01 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.ProtoSchema\x12\x39\n\x04rows\x18\x02 \x01(\x0b\x32+.google.cloud.bigquery.storage.v1.ProtoRows\x1a\x92\x01\n MissingValueInterpretationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12]\n\x05value\x18\x02 \x01(\x0e\x32N.google.cloud.bigquery.storage.v1.AppendRowsRequest.MissingValueInterpretation:\x02\x38\x01\"m\n\x1aMissingValueInterpretation\x12,\n(MISSING_VALUE_INTERPRETATION_UNSPECIFIED\x10\x00\x12\x0e\n\nNULL_VALUE\x10\x01\x12\x11\n\rDEFAULT_VALUE\x10\x02\x42\x06\n\x04rows\"\xfb\x02\n\x12\x41ppendRowsResponse\x12Z\n\rappend_result\x18\x01 \x01(\x0b\x32\x41.google.cloud.bigquery.storage.v1.AppendRowsResponse.AppendResultH\x00\x12#\n\x05\x65rror\x18\x02 \x01(\x0b\x32\x12.google.rpc.StatusH\x00\x12\x45\n\x0eupdated_schema\x18\x03 \x01(\x0b\x32-.google.cloud.bigquery.storage.v1.TableSchema\x12>\n\nrow_errors\x18\x04 \x03(\x0b\x32*.google.cloud.bigquery.storage.v1.RowError\x12\x14\n\x0cwrite_stream\x18\x05 \x01(\t\x1a;\n\x0c\x41ppendResult\x12+\n\x06offset\x18\x01 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\n\n\x08response\"\x9a\x01\n\x15GetWriteStreamRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*bigquerystorage.googleapis.com/WriteStream\x12?\n\x04view\x18\x03 \x01(\x0e\x32\x31.google.cloud.bigquery.storage.v1.WriteStreamView\"s\n\x1e\x42\x61tchCommitWriteStreamsRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x62igquery.googleapis.com/Table\x12\x1a\n\rwrite_streams\x18\x02 \x03(\tB\x03\xe0\x41\x02\"\x99\x01\n\x1f\x42\x61tchCommitWriteStreamsResponse\x12/\n\x0b\x63ommit_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x45\n\rstream_errors\x18\x02 \x03(\x0b\x32..google.cloud.bigquery.storage.v1.StorageError\"^\n\x1a\x46inalizeWriteStreamRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*bigquerystorage.googleapis.com/WriteStream\"0\n\x1b\x46inalizeWriteStreamResponse\x12\x11\n\trow_count\x18\x01 \x01(\x03\"\x89\x01\n\x10\x46lushRowsRequest\x12H\n\x0cwrite_stream\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*bigquerystorage.googleapis.com/WriteStream\x12+\n\x06offset\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\"#\n\x11\x46lushRowsResponse\x12\x0e\n\x06offset\x18\x01 \x01(\x03\"\xa4\x04\n\x0cStorageError\x12M\n\x04\x63ode\x18\x01 \x01(\x0e\x32?.google.cloud.bigquery.storage.v1.StorageError.StorageErrorCode\x12\x0e\n\x06\x65ntity\x18\x02 \x01(\t\x12\x15\n\rerror_message\x18\x03 \x01(\t\"\x9d\x03\n\x10StorageErrorCode\x12\"\n\x1eSTORAGE_ERROR_CODE_UNSPECIFIED\x10\x00\x12\x13\n\x0fTABLE_NOT_FOUND\x10\x01\x12\x1c\n\x18STREAM_ALREADY_COMMITTED\x10\x02\x12\x14\n\x10STREAM_NOT_FOUND\x10\x03\x12\x17\n\x13INVALID_STREAM_TYPE\x10\x04\x12\x18\n\x14INVALID_STREAM_STATE\x10\x05\x12\x14\n\x10STREAM_FINALIZED\x10\x06\x12 \n\x1cSCHEMA_MISMATCH_EXTRA_FIELDS\x10\x07\x12\x19\n\x15OFFSET_ALREADY_EXISTS\x10\x08\x12\x17\n\x13OFFSET_OUT_OF_RANGE\x10\t\x12\x15\n\x11\x43MEK_NOT_PROVIDED\x10\n\x12\x19\n\x15INVALID_CMEK_PROVIDED\x10\x0b\x12\x19\n\x15\x43MEK_ENCRYPTION_ERROR\x10\x0c\x12\x15\n\x11KMS_SERVICE_ERROR\x10\r\x12\x19\n\x15KMS_PERMISSION_DENIED\x10\x0e\"\xb3\x01\n\x08RowError\x12\r\n\x05index\x18\x01 \x01(\x03\x12\x45\n\x04\x63ode\x18\x02 \x01(\x0e\x32\x37.google.cloud.bigquery.storage.v1.RowError.RowErrorCode\x12\x0f\n\x07message\x18\x03 \x01(\t\"@\n\x0cRowErrorCode\x12\x1e\n\x1aROW_ERROR_CODE_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x46IELDS_ERROR\x10\x01\x32\x92\x06\n\x0c\x42igQueryRead\x12\xe9\x01\n\x11\x43reateReadSession\x12:.google.cloud.bigquery.storage.v1.CreateReadSessionRequest\x1a-.google.cloud.bigquery.storage.v1.ReadSession\"i\xda\x41$parent,read_session,max_stream_count\x82\xd3\xe4\x93\x02<\"7/v1/{read_session.table=projects/*/datasets/*/tables/*}:\x01*\x12\xcf\x01\n\x08ReadRows\x12\x31.google.cloud.bigquery.storage.v1.ReadRowsRequest\x1a\x32.google.cloud.bigquery.storage.v1.ReadRowsResponse\"Z\xda\x41\x12read_stream,offset\x82\xd3\xe4\x93\x02?\x12=/v1/{read_stream=projects/*/locations/*/sessions/*/streams/*}0\x01\x12\xc6\x01\n\x0fSplitReadStream\x12\x38.google.cloud.bigquery.storage.v1.SplitReadStreamRequest\x1a\x39.google.cloud.bigquery.storage.v1.SplitReadStreamResponse\">\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{name=projects/*/locations/*/sessions/*/streams/*}\x1a{\xca\x41\x1e\x62igquerystorage.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/cloud-platform2\xbc\x0b\n\rBigQueryWrite\x12\xd7\x01\n\x11\x43reateWriteStream\x12:.google.cloud.bigquery.storage.v1.CreateWriteStreamRequest\x1a-.google.cloud.bigquery.storage.v1.WriteStream\"W\xda\x41\x13parent,write_stream\x82\xd3\xe4\x93\x02;\"+/v1/{parent=projects/*/datasets/*/tables/*}:\x0cwrite_stream\x12\xd2\x01\n\nAppendRows\x12\x33.google.cloud.bigquery.storage.v1.AppendRowsRequest\x1a\x34.google.cloud.bigquery.storage.v1.AppendRowsResponse\"U\xda\x41\x0cwrite_stream\x82\xd3\xe4\x93\x02@\";/v1/{write_stream=projects/*/datasets/*/tables/*/streams/*}:\x01*(\x01\x30\x01\x12\xbf\x01\n\x0eGetWriteStream\x12\x37.google.cloud.bigquery.storage.v1.GetWriteStreamRequest\x1a-.google.cloud.bigquery.storage.v1.WriteStream\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\"3/v1/{name=projects/*/datasets/*/tables/*/streams/*}:\x01*\x12\xd9\x01\n\x13\x46inalizeWriteStream\x12<.google.cloud.bigquery.storage.v1.FinalizeWriteStreamRequest\x1a=.google.cloud.bigquery.storage.v1.FinalizeWriteStreamResponse\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\"3/v1/{name=projects/*/datasets/*/tables/*/streams/*}:\x01*\x12\xdc\x01\n\x17\x42\x61tchCommitWriteStreams\x12@.google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsRequest\x1a\x41.google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsResponse\"<\xda\x41\x06parent\x82\xd3\xe4\x93\x02-\x12+/v1/{parent=projects/*/datasets/*/tables/*}\x12\xcb\x01\n\tFlushRows\x12\x32.google.cloud.bigquery.storage.v1.FlushRowsRequest\x1a\x33.google.cloud.bigquery.storage.v1.FlushRowsResponse\"U\xda\x41\x0cwrite_stream\x82\xd3\xe4\x93\x02@\";/v1/{write_stream=projects/*/datasets/*/tables/*/streams/*}:\x01*\x1a\xb0\x01\xca\x41\x1e\x62igquerystorage.googleapis.com\xd2\x41\x8b\x01https://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/bigquery.insertdata,https://www.googleapis.com/auth/cloud-platformB\x94\x02\n$com.google.cloud.bigquery.storage.v1B\x0cStorageProtoP\x01Z>cloud.google.com/go/bigquery/storage/apiv1/storagepb;storagepb\xaa\x02 Google.Cloud.BigQuery.Storage.V1\xca\x02 Google\\Cloud\\BigQuery\\Storage\\V1\xea\x41U\n\x1d\x62igquery.googleapis.com/Table\x12\x34projects/{project}/datasets/{dataset}/tables/{table}b\x06proto3"

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
    ["google.cloud.bigquery.storage.v1.ReadSession", "google/cloud/bigquery/storage/v1/stream.proto"],
    ["google.cloud.bigquery.storage.v1.AvroRows", "google/cloud/bigquery/storage/v1/avro.proto"],
    ["google.cloud.bigquery.storage.v1.ArrowRecordBatch", "google/cloud/bigquery/storage/v1/arrow.proto"],
    ["google.protobuf.Int64Value", "google/protobuf/wrappers.proto"],
    ["google.cloud.bigquery.storage.v1.ProtoSchema", "google/cloud/bigquery/storage/v1/protobuf.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.bigquery.storage.v1.TableSchema", "google/cloud/bigquery/storage/v1/table.proto"],
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
    module Bigquery
      module Storage
        module V1
          CreateReadSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.CreateReadSessionRequest").msgclass
          ReadRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ReadRowsRequest").msgclass
          ThrottleState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ThrottleState").msgclass
          StreamStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StreamStats").msgclass
          StreamStats::Progress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StreamStats.Progress").msgclass
          ReadRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.ReadRowsResponse").msgclass
          SplitReadStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.SplitReadStreamRequest").msgclass
          SplitReadStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.SplitReadStreamResponse").msgclass
          CreateWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.CreateWriteStreamRequest").msgclass
          AppendRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest").msgclass
          AppendRowsRequest::ArrowData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest.ArrowData").msgclass
          AppendRowsRequest::ProtoData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest.ProtoData").msgclass
          AppendRowsRequest::MissingValueInterpretation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsRequest.MissingValueInterpretation").enummodule
          AppendRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsResponse").msgclass
          AppendRowsResponse::AppendResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.AppendRowsResponse.AppendResult").msgclass
          GetWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.GetWriteStreamRequest").msgclass
          BatchCommitWriteStreamsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsRequest").msgclass
          BatchCommitWriteStreamsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.BatchCommitWriteStreamsResponse").msgclass
          FinalizeWriteStreamRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FinalizeWriteStreamRequest").msgclass
          FinalizeWriteStreamResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FinalizeWriteStreamResponse").msgclass
          FlushRowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FlushRowsRequest").msgclass
          FlushRowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.FlushRowsResponse").msgclass
          StorageError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StorageError").msgclass
          StorageError::StorageErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.StorageError.StorageErrorCode").enummodule
          RowError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.RowError").msgclass
          RowError::RowErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.storage.v1.RowError.RowErrorCode").enummodule
        end
      end
    end
  end
end
