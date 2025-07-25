# Release History

### 1.12.0 (2025-07-24)

#### Features

* Added type support for Proto and Enum ([#30694](https://github.com/googleapis/google-cloud-ruby/issues/30694)) 

### 1.11.1 (2025-07-15)

#### Documentation

* clarify documentation for cases when multiple parameters are mutually exclusive for an RPC method ([#30623](https://github.com/googleapis/google-cloud-ruby/issues/30623)) 

### 1.11.0 (2025-06-24)

#### Features

* Support for RPCs for managing SchemaBundle resources ([#30536](https://github.com/googleapis/google-cloud-ruby/issues/30536)) 

### 1.10.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.9.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.9.0 (2025-04-25)

#### Features

* Added deletion protection support for LogicalView ([#29528](https://github.com/googleapis/google-cloud-ruby/issues/29528)) 

### 1.8.0 (2025-03-11)

#### Features

* add MaterializedViews and LogicalViews APIs ([#29316](https://github.com/googleapis/google-cloud-ruby/issues/29316)) 
* Included logical and materialized view resources 
* Support for OrderedCodeBytes encoding for Int64 
* Support for table row key schema 
* Support for the ignore_warnings parameter to the update_table RPC 
* Support for timestamp and struct encoding 
#### Bug Fixes

* Removed useless state parameter from update_instance 

### 1.7.0 (2025-01-30)

#### Features

* Support wait_for_replication convenience method ([#28252](https://github.com/googleapis/google-cloud-ruby/issues/28252)) 

### 1.6.0 (2025-01-28)

#### Features

* Provide GcRule convenience constructors, and warn if more than one field is set ([#28210](https://github.com/googleapis/google-cloud-ruby/issues/28210)) 
* Update Ruby version requirement to 3.0 
#### Bug Fixes

* Extend default check_consistency timeout to 1 hour ([#28246](https://github.com/googleapis/google-cloud-ruby/issues/28246)) 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.5.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.4.0 (2024-09-30)

#### Features

* Support for cluster node scaling factor ([#27353](https://github.com/googleapis/google-cloud-ruby/issues/27353)) 

### 1.3.0 (2024-09-11)

#### Features

* Support for row affinity in app profiles ([#27307](https://github.com/googleapis/google-cloud-ruby/issues/27307)) 

### 1.2.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27004](https://github.com/googleapis/google-cloud-ruby/issues/27004)) 

### 1.2.0 (2024-08-05)

#### Features

* add fields and the BackupType proto for Hot Backups ([#26568](https://github.com/googleapis/google-cloud-ruby/issues/26568)) 
#### Documentation

* clarify comments and fix typos 

### 1.1.0 (2024-07-23)

#### Features

* Add min, max, hll aggregators and more types ([#26490](https://github.com/googleapis/google-cloud-ruby/issues/26490)) 
#### Documentation

* Correct various documentation types 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.27.0 (2024-05-29)

#### Features

* Add String type with Utf8Raw encoding to Bigtable API ([#25947](https://github.com/googleapis/google-cloud-ruby/issues/25947)) 

### 0.26.0 (2024-04-19)

#### Features

* Support automated backup policy ([#25460](https://github.com/googleapis/google-cloud-ruby/issues/25460)) 

### 0.25.0 (2024-04-15)

#### Features

* add Data Boost configurations to admin API ([#25421](https://github.com/googleapis/google-cloud-ruby/issues/25421)) 

### 0.24.0 (2024-03-10)

#### Features

* Support for ColumnFamily#value_type 
* Support for Modification#update_mask 

### 0.23.0 (2024-03-06)

#### Features

* support authorized views services 

### 0.22.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24865](https://github.com/googleapis/google-cloud-ruby/issues/24865)) 

### 0.21.3 (2024-02-10)

#### Bug Fixes

* extend timeouts for deleting snapshots, backups and tables [#24791](https://github.com/googleapis/google-cloud-ruby/issues/24791) 

### 0.21.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.21.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.21.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23775](https://github.com/googleapis/google-cloud-ruby/issues/23775)) 

### 0.20.0 (2024-01-03)

#### Features

* Modify ModifyColumnFamiliesRequest proto to expose ignore_warnings field ([#23665](https://github.com/googleapis/google-cloud-ruby/issues/23665)) 

### 0.19.0 (2023-10-16)

#### Features

* Add standard isolation options to AppProfile ([#23425](https://github.com/googleapis/google-cloud-ruby/issues/23425)) 

### 0.18.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22917](https://github.com/googleapis/google-cloud-ruby/issues/22917)) 

### 0.17.0 (2023-08-15)

#### Features

* Support for the copy_backup RPC ([#22783](https://github.com/googleapis/google-cloud-ruby/issues/22783)) 

### 0.16.3 (2023-08-04)

#### Documentation

* Improve documentation format ([#22684](https://github.com/googleapis/google-cloud-ruby/issues/22684)) 

### 0.16.2 (2023-07-10)

#### Documentation

* Increase the max backup retention period to 90 days ([#22465](https://github.com/googleapis/google-cloud-ruby/issues/22465)) 

### 0.16.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.16.0 (2023-05-31)

#### Features

* Support for enabling the change stream on a table ([#21683](https://github.com/googleapis/google-cloud-ruby/issues/21683)) 
* Uses binary protobuf definitions for better forward compatibility 

### 0.15.0 (2022-09-16)

#### Features

* Support for Table#deletion_protection 
* Support for update_table call ([#19149](https://github.com/googleapis/google-cloud-ruby/issues/19149)) 

### 0.14.0 (2022-07-28)

#### Features

* Support for the satisfies_pzs field on Instsance ([#18872](https://github.com/googleapis/google-cloud-ruby/issues/18872)) 

### 0.13.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.12.0 (2022-06-30)

#### Features

* Support for undelete_table 

### 0.11.0 (2022-05-19)

#### Features

* Include table info in CreateClusterMetadata
* Support the "name" parameter for update_instance and update_cluster

### 0.10.0 (2022-04-20)

#### Features

* Support for update masks when setting IAM policies

### 0.9.1 / 2022-03-31

#### Documentation

* Clarification on a few autoscaling and encryption fields

### 0.9.0 / 2022-03-30

#### Features

* Support for listing hot tablets

### 0.8.1 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.8.0 / 2021-12-07

#### Features

* Support for cluster autoscaling and partial updates

#### Bug Fixes

* Use the correct backend hostname by default

### 0.7.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.7.0 / 2021-10-25

#### Features

* Reports the creation time of instances

### 0.6.1 / 2021-08-30

#### Documentation

* Fix the links to the corresponding main client library

### 0.6.0 / 2021-08-20

#### Features

* Add MultiClusterRoutingUseAny#cluster_ids field

### 0.5.4 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.5.3 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.5.2 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.5.1 / 2021-05-19

#### Documentation

* Clarify that backup restores must be in the same project

### 0.5.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.4.0 / 2021-02-25

#### Features

* Support for Customer Managed Encryption Keys on clusters

### 0.3.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.2.1 / 2021-01-26

#### Bug Fixes

* Update default timeout and retry configuration

### 0.2.0 / 2020-10-29

#### Features

* Update GetIamPolicy to include the additional binding for Backup.
  * Change DeleteAppProfileRequest.ignore_warnings to REQUIRED.

### 0.1.2 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.1 / 2020-08-06

#### Bug Fixes

* Fix retries by converting error names to integer codes

### 0.1.0 / 2020-07-27

Initial release.
