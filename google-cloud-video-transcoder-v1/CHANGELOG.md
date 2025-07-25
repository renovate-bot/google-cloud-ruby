# Changelog

### 2.2.0 (2025-07-25)

#### Features

* Support for filling content gaps 
* Support for fmp4 container configuration 

### 2.1.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 2.0.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 2.0.0 (2025-02-07)

### ⚠ BREAKING CHANGES

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826))

#### Bug Fixes

* Fixed incorrect pagination on certain REST RPC methods ([#28826](https://github.com/googleapis/google-cloud-ruby/issues/28826)) 

### 1.2.0 (2025-01-29)

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

* Add field `experimental_features` to message `PythonSettings` ([#27031](https://github.com/googleapis/google-cloud-ruby/issues/27031)) 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.13.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24879](https://github.com/googleapis/google-cloud-ruby/issues/24879)) 

### 0.12.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.12.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.12.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23788](https://github.com/googleapis/google-cloud-ruby/issues/23788)) 

### 0.11.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22925](https://github.com/googleapis/google-cloud-ruby/issues/22925)) 

### 0.10.0 (2023-07-10)

#### Features

* added support for batch mode priority 
* added support for content encryption (DRM) 
* added support for disabling job processing optimizations 
* added support for segment template manifest generation with DASH ([#22503](https://github.com/googleapis/google-cloud-ruby/issues/22503)) 

### 0.9.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.9.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21679](https://github.com/googleapis/google-cloud-ruby/issues/21679)) 

### 0.8.0 (2023-04-16)

#### Features

* support batch processing mode 

### 0.7.0 (2023-03-08)

#### Features

* Support REST transport ([#20630](https://github.com/googleapis/google-cloud-ruby/issues/20630)) 

### 0.6.0 (2023-03-03)

#### Features

* add support for language_code for audio stream, display_name for audio and text stream. ([#20585](https://github.com/googleapis/google-cloud-ruby/issues/20585)) 

### 0.5.0 (2022-12-09)

#### Features

* add Deinterlace to PreprocessingConfig 

### 0.4.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.3.0 (2022-06-17)

#### Features

* Support user labels in Job and JobTemplate

### 0.2.2 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.2.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.2.0 / 2021-10-18

#### Features

* Support allow_missing parameter in delete calls

### 0.1.0 / 2021-08-17

#### Features

* Initial generation of google-cloud-video-transcoder-v1
