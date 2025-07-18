# Release History

### 1.6.0 (2025-07-17)

#### Features

* Support for tags when restoring a database ([#30683](https://github.com/googleapis/google-cloud-ruby/issues/30683)) 

### 1.5.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.4.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.4.0 (2025-04-21)

#### Features

* add the UserCreds API 
* new Firestore index modes and Database Editions ([#29439](https://github.com/googleapis/google-cloud-ruby/issues/29439)) 

### 1.3.0 (2025-01-28)

#### Features

* Support a filter on list_backups 
* Update Ruby version requirement to 3.0 
#### Bug Fixes

* Bump default deadline on create_database and restore_database to 2 minutes 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.0 (2024-09-11)

#### Features

* Added Database#cmek_config (information about CMEK enablement) 
* Added Database#delete_time (the time a database was deleted, if it ever was) 
* Added Database#previous_id (if a database was deleted, what ID it was using beforehand) 
* Added Database#source_info (information about database provenance, specifically for restored databases) 
* Allow specifying an encryption_config when restoring a database 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 
* Add field `experimental_features` to message `PythonSettings` 
* Clarify maximum retention of backups (max 14 weeks) ([#27027](https://github.com/googleapis/google-cloud-ruby/issues/27027)) 
* Remove note about backups running at a specific time 
* Standardize on the capitalization of "ID" 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.18.0 (2024-06-13)

#### Features

* Support for bulk delete API 
* Support for including deleted resources in list_databases 

### 0.17.1 (2024-04-19)

#### Documentation

* Allow 14 week backup retention for Firestore daily backups ([#25468](https://github.com/googleapis/google-cloud-ruby/issues/25468)) 

### 0.17.0 (2024-04-15)

#### Features

* add Vector Index API ([#25436](https://github.com/googleapis/google-cloud-ruby/issues/25436)) 
#### Documentation

* minor fixes 

### 0.16.0 (2024-03-18)

#### Features

* Support backup APIs ([#24393](https://github.com/googleapis/google-cloud-ruby/issues/24393)) 
* Support scheduling APIs for backups ([#24393](https://github.com/googleapis/google-cloud-ruby/issues/24393)) 

### 0.15.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24870](https://github.com/googleapis/google-cloud-ruby/issues/24870)) 

### 0.14.3 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.14.2 (2024-01-15)

#### Documentation

* Minor formatting fix ([#24411](https://github.com/googleapis/google-cloud-ruby/issues/24411)) 

### 0.14.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.14.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23779](https://github.com/googleapis/google-cloud-ruby/issues/23779)) 

### 0.13.0 (2024-01-03)

#### Features

* add DeleteDatabase API and delete protection ([#23683](https://github.com/googleapis/google-cloud-ruby/issues/23683)) 
#### Documentation

* update Database API description 

### 0.12.0 (2023-12-08)

#### Features

* Support database version retention and point-in-time-recovery 
* Support namespace_ids and snapshot_time parameters to export_documents RPC 
* Support namespace_ids parameter to import_documents RPC 

### 0.11.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22920](https://github.com/googleapis/google-cloud-ruby/issues/22920)) 

### 0.10.0 (2023-06-06)

#### Features

* Support for create_database ([#22073](https://github.com/googleapis/google-cloud-ruby/issues/22073)) 
* Uses binary protobuf definitions for better forward compatibility ([#21675](https://github.com/googleapis/google-cloud-ruby/issues/21675)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.9.0 (2023-05-19)

#### Features

* add ApiScope and COLLECTION_RECURSIVE query_scope for Firestore index 

### 0.8.0 (2023-03-08)

#### Features

* Support REST transport ([#20626](https://github.com/googleapis/google-cloud-ruby/issues/20626)) 

### 0.7.1 (2023-01-15)

#### Documentation

* Reference the correct main client gem name ([#19994](https://github.com/googleapis/google-cloud-ruby/issues/19994)) 

### 0.7.0 (2022-09-16)

#### Features

* Support for the locations client ([#19141](https://github.com/googleapis/google-cloud-ruby/issues/19141)) 

### 0.6.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.5.0 (2022-05-29)

#### Features

* support appengineIntegrationMode and key_prefix in database
* support TTL config

### 0.4.0 / 2022-01-11

#### Features

* Support for get_database, list_databases, and update_database operations

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.3.5 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.3.4 / 2021-08-30

#### Documentation

* Fix the links to the corresponding main client library

### 0.3.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.3.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.3.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.3.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.2.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.1.3 / 2021-01-20

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.1.2 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.1 / 2020-08-06

#### Bug Fixes

* Fix retries by converting error names to integer codes

### 0.1.0 / 2020-07-27

Initial release.
