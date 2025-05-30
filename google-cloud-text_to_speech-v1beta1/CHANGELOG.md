# Release History

### 0.21.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.20.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.20.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.19.0 (2025-01-08)

#### Features

* Support for Linear PCM encoding 
* Support for streaming audio config 

### 0.18.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.17.0 (2024-10-25)

#### Features

* add brand voice lite 
* add multi-speaker markup, which allows generating dialogue between multiple speakers ([#27454](https://github.com/googleapis/google-cloud-ruby/issues/27454)) 

### 0.16.0 (2024-10-15)

#### Features

* Support for low-latency journey synthesis 
* Support for pronunciation customizations 

### 0.15.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27031](https://github.com/googleapis/google-cloud-ruby/issues/27031)) 

### 0.15.1 (2024-08-28)

#### Documentation

* update Long Audio capabilities to include SSML ([#27000](https://github.com/googleapis/google-cloud-ruby/issues/27000)) 

### 0.15.0 (2024-08-22)

#### Features

* Support for bidirectional streaming speech synthesis ([#26967](https://github.com/googleapis/google-cloud-ruby/issues/26967)) 
#### Documentation

* Updates to comments in VoiceSelectionParams 

### 0.14.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24878](https://github.com/googleapis/google-cloud-ruby/issues/24878)) 

### 0.13.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.13.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.13.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23787](https://github.com/googleapis/google-cloud-ruby/issues/23787)) 

### 0.12.1 (2024-01-09)

#### Bug Fixes

* Fixed HTTP binding for long audio synthesis when calling via REST ([#23726](https://github.com/googleapis/google-cloud-ruby/issues/23726)) 

### 0.12.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22924](https://github.com/googleapis/google-cloud-ruby/issues/22924)) 

### 0.11.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.11.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21679](https://github.com/googleapis/google-cloud-ruby/issues/21679)) 

### 0.10.1 (2023-05-10)

#### Documentation

* update documentation to require certain fields ([#21563](https://github.com/googleapis/google-cloud-ruby/issues/21563)) 

### 0.10.0 (2023-02-23)

#### Features

* Added support for REST transport ([#20498](https://github.com/googleapis/google-cloud-ruby/issues/20498)) 

### 0.9.1 (2022-12-15)

#### Documentation

* Minor fixes to reference documentation formatting ([#19874](https://github.com/googleapis/google-cloud-ruby/issues/19874)) 

### 0.9.0 (2022-12-09)

#### Features

* Support for synthesize_long_audio ([#19827](https://github.com/googleapis/google-cloud-ruby/issues/19827)) 

### 0.8.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.7.1 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation
* Updates to language_code descriptions

### 0.7.0 / 2021-12-07

#### Features

* Added custom voice configuration

### 0.6.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.6.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.6.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.6.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.6.0 / 2021-04-05

#### Features

* Support for ALAW audio encoding

### 0.5.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.4.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.3.2 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.3.1 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.3.0 / 2020-08-06

#### Features

* Support for timepoints, 64 kbps MP3, and MULAW

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.2.3 / 2020-06-18

#### Documentation

* Add documentation and API enablement links to the readme

### 0.2.2 / 2020-06-05

#### Bug Fixes

* Eliminate a Ruby warning that appeared in some cases when accessing rpc-scoped configs

### 0.2.1 / 2020-05-26

#### Bug Fixes

* Removed unused google/cloud/common_resources_pb file

### 0.2.0 / 2020-05-21

#### Features

* The quota_project can be set via configuration

### 0.1.0 / 2020-05-05

Initial release.
