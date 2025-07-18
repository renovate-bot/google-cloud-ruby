# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Spanner
      module V1
        # Options to use for transactions.
        # @!attribute [rw] read_write
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions::ReadWrite]
        #     Transaction may write.
        #
        #     Authorization to begin a read-write transaction requires
        #     `spanner.databases.beginOrRollbackReadWriteTransaction` permission
        #     on the `session` resource.
        #
        #     Note: The following fields are mutually exclusive: `read_write`, `partitioned_dml`, `read_only`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] partitioned_dml
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions::PartitionedDml]
        #     Partitioned DML transaction.
        #
        #     Authorization to begin a Partitioned DML transaction requires
        #     `spanner.databases.beginPartitionedDmlTransaction` permission
        #     on the `session` resource.
        #
        #     Note: The following fields are mutually exclusive: `partitioned_dml`, `read_write`, `read_only`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] read_only
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions::ReadOnly]
        #     Transaction does not write.
        #
        #     Authorization to begin a read-only transaction requires
        #     `spanner.databases.beginReadOnlyTransaction` permission
        #     on the `session` resource.
        #
        #     Note: The following fields are mutually exclusive: `read_only`, `read_write`, `partitioned_dml`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] exclude_txn_from_change_streams
        #   @return [::Boolean]
        #     When `exclude_txn_from_change_streams` is set to `true`, it prevents read
        #     or write transactions from being tracked in change streams.
        #
        #     * If the DDL option `allow_txn_exclusion` is set to `true`, then the
        #     updates
        #      made within this transaction aren't recorded in the change stream.
        #
        #     * If you don't set the DDL option `allow_txn_exclusion` or if it's
        #      set to `false`, then the updates made within this transaction are
        #      recorded in the change stream.
        #
        #     When `exclude_txn_from_change_streams` is set to `false` or not set,
        #     modifications from this transaction are recorded in all change streams
        #     that are tracking columns modified by these transactions.
        #
        #     The `exclude_txn_from_change_streams` option can only be specified
        #     for read-write or partitioned DML transactions, otherwise the API returns
        #     an `INVALID_ARGUMENT` error.
        # @!attribute [rw] isolation_level
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions::IsolationLevel]
        #     Isolation level for the transaction.
        class TransactionOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Message type to initiate a read-write transaction. Currently this
          # transaction type has no options.
          # @!attribute [rw] read_lock_mode
          #   @return [::Google::Cloud::Spanner::V1::TransactionOptions::ReadWrite::ReadLockMode]
          #     Read lock mode for the transaction.
          # @!attribute [rw] multiplexed_session_previous_transaction_id
          #   @return [::String]
          #     Optional. Clients should pass the transaction ID of the previous
          #     transaction attempt that was aborted if this transaction is being
          #     executed on a multiplexed session.
          class ReadWrite
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # `ReadLockMode` is used to set the read lock mode for read-write
            # transactions.
            module ReadLockMode
              # Default value.
              #
              # * If isolation level is
              #   {::Google::Cloud::Spanner::V1::TransactionOptions::IsolationLevel::REPEATABLE_READ REPEATABLE_READ},
              #   then it is an error to specify `read_lock_mode`. Locking semantics
              #   default to `OPTIMISTIC`. No validation checks are done for reads,
              #   except to validate that the data that was served at the snapshot time
              #   is unchanged at commit time in the following cases:
              #     1. reads done as part of queries that use `SELECT FOR UPDATE`
              #     2. reads done as part of statements with a `LOCK_SCANNED_RANGES`
              #        hint
              #     3. reads done as part of DML statements
              # * At all other isolation levels, if `read_lock_mode` is the default
              #   value, then pessimistic read locks are used.
              READ_LOCK_MODE_UNSPECIFIED = 0

              # Pessimistic lock mode.
              #
              # Read locks are acquired immediately on read.
              # Semantics described only applies to
              # {::Google::Cloud::Spanner::V1::TransactionOptions::IsolationLevel::SERIALIZABLE SERIALIZABLE}
              # isolation.
              PESSIMISTIC = 1

              # Optimistic lock mode.
              #
              # Locks for reads within the transaction are not acquired on read.
              # Instead the locks are acquired on a commit to validate that
              # read/queried data has not changed since the transaction started.
              # Semantics described only applies to
              # {::Google::Cloud::Spanner::V1::TransactionOptions::IsolationLevel::SERIALIZABLE SERIALIZABLE}
              # isolation.
              OPTIMISTIC = 2
            end
          end

          # Message type to initiate a Partitioned DML transaction.
          class PartitionedDml
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message type to initiate a read-only transaction.
          # @!attribute [rw] strong
          #   @return [::Boolean]
          #     Read at a timestamp where all previously committed transactions
          #     are visible.
          #
          #     Note: The following fields are mutually exclusive: `strong`, `min_read_timestamp`, `max_staleness`, `read_timestamp`, `exact_staleness`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] min_read_timestamp
          #   @return [::Google::Protobuf::Timestamp]
          #     Executes all reads at a timestamp >= `min_read_timestamp`.
          #
          #     This is useful for requesting fresher data than some previous
          #     read, or data that is fresh enough to observe the effects of some
          #     previously committed transaction whose timestamp is known.
          #
          #     Note that this option can only be used in single-use transactions.
          #
          #     A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
          #     Example: `"2014-10-02T15:01:23.045123456Z"`.
          #
          #     Note: The following fields are mutually exclusive: `min_read_timestamp`, `strong`, `max_staleness`, `read_timestamp`, `exact_staleness`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] max_staleness
          #   @return [::Google::Protobuf::Duration]
          #     Read data at a timestamp >= `NOW - max_staleness`
          #     seconds. Guarantees that all writes that have committed more
          #     than the specified number of seconds ago are visible. Because
          #     Cloud Spanner chooses the exact timestamp, this mode works even if
          #     the client's local clock is substantially skewed from Cloud Spanner
          #     commit timestamps.
          #
          #     Useful for reading the freshest data available at a nearby
          #     replica, while bounding the possible staleness if the local
          #     replica has fallen behind.
          #
          #     Note that this option can only be used in single-use
          #     transactions.
          #
          #     Note: The following fields are mutually exclusive: `max_staleness`, `strong`, `min_read_timestamp`, `read_timestamp`, `exact_staleness`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] read_timestamp
          #   @return [::Google::Protobuf::Timestamp]
          #     Executes all reads at the given timestamp. Unlike other modes,
          #     reads at a specific timestamp are repeatable; the same read at
          #     the same timestamp always returns the same data. If the
          #     timestamp is in the future, the read is blocked until the
          #     specified timestamp, modulo the read's deadline.
          #
          #     Useful for large scale consistent reads such as mapreduces, or
          #     for coordinating many reads against a consistent snapshot of the
          #     data.
          #
          #     A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
          #     Example: `"2014-10-02T15:01:23.045123456Z"`.
          #
          #     Note: The following fields are mutually exclusive: `read_timestamp`, `strong`, `min_read_timestamp`, `max_staleness`, `exact_staleness`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] exact_staleness
          #   @return [::Google::Protobuf::Duration]
          #     Executes all reads at a timestamp that is `exact_staleness`
          #     old. The timestamp is chosen soon after the read is started.
          #
          #     Guarantees that all writes that have committed more than the
          #     specified number of seconds ago are visible. Because Cloud Spanner
          #     chooses the exact timestamp, this mode works even if the client's
          #     local clock is substantially skewed from Cloud Spanner commit
          #     timestamps.
          #
          #     Useful for reading at nearby replicas without the distributed
          #     timestamp negotiation overhead of `max_staleness`.
          #
          #     Note: The following fields are mutually exclusive: `exact_staleness`, `strong`, `min_read_timestamp`, `max_staleness`, `read_timestamp`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] return_read_timestamp
          #   @return [::Boolean]
          #     If true, the Cloud Spanner-selected read timestamp is included in
          #     the {::Google::Cloud::Spanner::V1::Transaction Transaction} message that describes
          #     the transaction.
          class ReadOnly
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # `IsolationLevel` is used when setting `isolation_level` for a transaction.
          module IsolationLevel
            # Default value.
            #
            # If the value is not specified, the `SERIALIZABLE` isolation level is
            # used.
            ISOLATION_LEVEL_UNSPECIFIED = 0

            # All transactions appear as if they executed in a serial order, even if
            # some of the reads, writes, and other operations of distinct transactions
            # actually occurred in parallel. Spanner assigns commit timestamps that
            # reflect the order of committed transactions to implement this property.
            # Spanner offers a stronger guarantee than serializability called external
            # consistency. For further details, please refer to
            # https://cloud.google.com/spanner/docs/true-time-external-consistency#serializability.
            SERIALIZABLE = 1

            # All reads performed during the transaction observe a consistent snapshot
            # of the database, and the transaction is only successfully committed in
            # the absence of conflicts between its updates and any concurrent updates
            # that have occurred since that snapshot. Consequently, in contrast to
            # `SERIALIZABLE` transactions, only write-write conflicts are detected in
            # snapshot transactions.
            #
            # This isolation level does not support Read-only and Partitioned DML
            # transactions.
            #
            # When `REPEATABLE_READ` is specified on a read-write transaction, the
            # locking semantics default to `OPTIMISTIC`.
            REPEATABLE_READ = 2
          end
        end

        # A transaction.
        # @!attribute [rw] id
        #   @return [::String]
        #     `id` may be used to identify the transaction in subsequent
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#read Read},
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#execute_sql ExecuteSql},
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#commit Commit}, or
        #     {::Google::Cloud::Spanner::V1::Spanner::Client#rollback Rollback} calls.
        #
        #     Single-use read-only transactions do not have IDs, because
        #     single-use transactions do not support multiple requests.
        # @!attribute [rw] read_timestamp
        #   @return [::Google::Protobuf::Timestamp]
        #     For snapshot read-only transactions, the read timestamp chosen
        #     for the transaction. Not returned by default: see
        #     {::Google::Cloud::Spanner::V1::TransactionOptions::ReadOnly#return_read_timestamp TransactionOptions.ReadOnly.return_read_timestamp}.
        #
        #     A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
        #     Example: `"2014-10-02T15:01:23.045123456Z"`.
        # @!attribute [rw] precommit_token
        #   @return [::Google::Cloud::Spanner::V1::MultiplexedSessionPrecommitToken]
        #     A precommit token is included in the response of a BeginTransaction
        #     request if the read-write transaction is on a multiplexed session and
        #     a mutation_key was specified in the
        #     {::Google::Cloud::Spanner::V1::BeginTransactionRequest BeginTransaction}.
        #     The precommit token with the highest sequence number from this transaction
        #     attempt should be passed to the {::Google::Cloud::Spanner::V1::Spanner::Client#commit Commit}
        #     request for this transaction.
        class Transaction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This message is used to select the transaction in which a
        # {::Google::Cloud::Spanner::V1::Spanner::Client#read Read} or
        # {::Google::Cloud::Spanner::V1::Spanner::Client#execute_sql ExecuteSql} call runs.
        #
        # See {::Google::Cloud::Spanner::V1::TransactionOptions TransactionOptions} for more
        # information about transactions.
        # @!attribute [rw] single_use
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions]
        #     Execute the read or SQL query in a temporary transaction.
        #     This is the most efficient way to execute a transaction that
        #     consists of a single SQL query.
        #
        #     Note: The following fields are mutually exclusive: `single_use`, `id`, `begin`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] id
        #   @return [::String]
        #     Execute the read or SQL query in a previously-started transaction.
        #
        #     Note: The following fields are mutually exclusive: `id`, `single_use`, `begin`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] begin
        #   @return [::Google::Cloud::Spanner::V1::TransactionOptions]
        #     Begin a new transaction and execute this read or SQL query in
        #     it. The transaction ID of the new transaction is returned in
        #     {::Google::Cloud::Spanner::V1::ResultSetMetadata#transaction ResultSetMetadata.transaction},
        #     which is a {::Google::Cloud::Spanner::V1::Transaction Transaction}.
        #
        #     Note: The following fields are mutually exclusive: `begin`, `single_use`, `id`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class TransactionSelector
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # When a read-write transaction is executed on a multiplexed session,
        # this precommit token is sent back to the client
        # as a part of the {::Google::Cloud::Spanner::V1::Transaction Transaction} message in the
        # {::Google::Cloud::Spanner::V1::BeginTransactionRequest BeginTransaction} response and
        # also as a part of the {::Google::Cloud::Spanner::V1::ResultSet ResultSet} and
        # {::Google::Cloud::Spanner::V1::PartialResultSet PartialResultSet} responses.
        # @!attribute [rw] precommit_token
        #   @return [::String]
        #     Opaque precommit token.
        # @!attribute [rw] seq_num
        #   @return [::Integer]
        #     An incrementing seq number is generated on every precommit token
        #     that is returned. Clients should remember the precommit token with the
        #     highest sequence number from the current transaction attempt.
        class MultiplexedSessionPrecommitToken
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
