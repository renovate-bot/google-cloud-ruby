# Changelog

### 1.3.1 (2025-07-15)

#### Documentation

* clarify documentation for cases when multiple parameters are mutually exclusive for an RPC method ([#30623](https://github.com/googleapis/google-cloud-ruby/issues/30623)) 

### 1.3.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.2.2 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.2.1 (2025-02-25)

#### Documentation

* fix broken link in comment for field `OperationMetadata.requested_cancellation` ([#29183](https://github.com/googleapis/google-cloud-ruby/issues/29183)) 

### 1.2.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.1.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27004](https://github.com/googleapis/google-cloud-ruby/issues/27004)) 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.8.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24867](https://github.com/googleapis/google-cloud-ruby/issues/24867)) 

### 0.7.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.7.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.7.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23776](https://github.com/googleapis/google-cloud-ruby/issues/23776)) 

### 0.6.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22918](https://github.com/googleapis/google-cloud-ruby/issues/22918)) 

### 0.5.0 (2023-09-05)

#### Features

* Support GenerateTcpProxyScript ([#22882](https://github.com/googleapis/google-cloud-ruby/issues/22882)) 
* Support mapping rules ([#22882](https://github.com/googleapis/google-cloud-ruby/issues/22882)) 

### 0.4.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21673](https://github.com/googleapis/google-cloud-ruby/issues/21673)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.3.0 (2023-05-19)

#### Features

* support Oracle for PostgreSQL migration APIs 

### 0.2.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.1.5 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.3 / 2021-10-18

#### Documentation

* Minor clarification to the NOT_STARTED state documentation

### 0.1.2 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.1.1 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.1.0 / 2021-06-21

#### Features

* Initial generation of google-cloud-cloud_dms-v1
