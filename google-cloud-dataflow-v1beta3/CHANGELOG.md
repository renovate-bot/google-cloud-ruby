# Changelog

### 0.13.1 (2025-07-15)

#### Documentation

* Clarify documentation for cases when multiple parameters are mutually exclusive for an RPC method ([#30624](https://github.com/googleapis/google-cloud-ruby/issues/30624)) 

### 0.13.0 (2025-05-12)

#### Features

* Support for data sampling configuration 
* Support for dynamic PubSub topics 
* Support for filtering by name in the list_jobs RPC 
* Support for straggler info 
* Support for Streaming Engine options 
* Support for Trie aggregation 
* Support update masks for the update_job RPC 
* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 
#### Bug Fixes

* Fixed default oauth scopes 
#### Documentation

* Removed notes stating that features are not ready 

### 0.12.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.12.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28824](https://github.com/googleapis/google-cloud-ruby/issues/28824)) 

### 0.11.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.10.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.9.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27007](https://github.com/googleapis/google-cloud-ruby/issues/27007)) 

### 0.9.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24868](https://github.com/googleapis/google-cloud-ruby/issues/24868)) 

### 0.8.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.8.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.8.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23777](https://github.com/googleapis/google-cloud-ruby/issues/23777)) 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22919](https://github.com/googleapis/google-cloud-ruby/issues/22919)) 

### 0.6.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21673](https://github.com/googleapis/google-cloud-ruby/issues/21673)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20625](https://github.com/googleapis/google-cloud-ruby/issues/20625)) 

### 0.4.0 (2022-06-30)

#### Features

* Updated minimum Ruby version to 2.6 ([#18439](https://github.com/googleapis/google-cloud-ruby/issues/18439)) 
#### Documentation

* Fixed the documented regular expression for the Job name 

### 0.3.0 / 2022-03-30

#### Features

* Support for environment capabilities

### 0.2.0 / 2022-02-16

#### Features

* Add parameters to FlexTemplateRuntimeEnvironment: disk_size_gb, autoscaling_algorithm, dump_heap_on_oom, save_heap_dumps_to_gcs_path, and launcher_machine_type

### 0.1.4 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.3 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.2 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.1.1 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.1.0 / 2021-06-29

#### Features

* Initial generation of google-cloud-dataflow-v1beta3
