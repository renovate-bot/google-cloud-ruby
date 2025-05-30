# Release History

### 1.7.0 (2025-05-16)

#### Features

* Support for ETags on AutokeyConfig 
#### Documentation

* Clarify that total_size fields are not populated if list filters are applied 

### 1.6.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.5.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.5.0 (2025-02-25)

#### Features

* Introduce PublicKeyFormat enum for selecting public key export encoding 
* Support PQC asymmetric signing algorithms ML_DSA_65 and SLH_DSA_SHA2_128s ([#29168](https://github.com/googleapis/google-cloud-ruby/issues/29168)) 

### 1.4.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.3.2 (2025-01-15)

#### Documentation

* Minor updates ([#28203](https://github.com/googleapis/google-cloud-ruby/issues/28203)) 

### 1.3.1 (2025-01-08)

#### Documentation

* Fixed some links in the reference documentation ([#28116](https://github.com/googleapis/google-cloud-ruby/issues/28116)) 

### 1.3.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.2.1 (2024-12-04)

#### Documentation

* Updated CryptoKeyVersionAlgorithm description ([#27672](https://github.com/googleapis/google-cloud-ruby/issues/27672)) 

### 1.2.0 (2024-11-07)

#### Features

* Add AdvancedCompleteQuery API 
* Add BillingEstimation in data store 
* Add GroundedGenerationService API ([#27537](https://github.com/googleapis/google-cloud-ruby/issues/27537)) 
* Add lite search API to allow public website search with API key 
* Add one_box_page_size on search 
* Add Sitemap APIs to preview channel 
* Support advanced boost search 
* Support Google Workspace search 
* Support natural language understanding search 
* support query regex in control match rules 
* Support search personalization to preview channel 
#### Documentation

* deprecate asynchronous mode in answer generation 
* deprecate extractive_answers in answer generation 
* keep the API doc up-to-date with recent changes 

### 1.1.0 (2024-09-30)

#### Features

* Support pagination in the list_keys_handle RPC (BREAKING CHANGE) ([#27338](https://github.com/googleapis/google-cloud-ruby/issues/27338)) 
* Support states for AutokeyConfig 

### 1.0.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.1 (2024-08-08)

#### Documentation

* Formatting updates to README.md ([#26628](https://github.com/googleapis/google-cloud-ruby/issues/26628)) 

### 1.0.0 (2024-07-08)

#### Features

* Bump version to 1.0.0 

### 0.27.0 (2024-06-24)

#### Features

* Support Key Access Justifications policy configuration ([#26137](https://github.com/googleapis/google-cloud-ruby/issues/26137)) 

### 0.26.0 (2024-05-15)

#### Features

* Support new Autokey ad AutokeyAdmin services ([#25856](https://github.com/googleapis/google-cloud-ruby/issues/25856)) 

### 0.25.1 (2024-04-19)

#### Documentation

* Clarify PEM format field in google.cloud.kms.v1.PublicKey is always populated ([#25685](https://github.com/googleapis/google-cloud-ruby/issues/25685)) 

### 0.25.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24871](https://github.com/googleapis/google-cloud-ruby/issues/24871)) 

### 0.24.3 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.24.2 (2024-02-01)

#### Documentation

* update comments ([#24495](https://github.com/googleapis/google-cloud-ruby/issues/24495)) 

### 0.24.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.24.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23780](https://github.com/googleapis/google-cloud-ruby/issues/23780)) 

### 0.23.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22921](https://github.com/googleapis/google-cloud-ruby/issues/22921)) 

### 0.22.1 (2023-08-04)

#### Documentation

* Improve documentation format ([#22686](https://github.com/googleapis/google-cloud-ruby/issues/22686)) 

### 0.22.0 (2023-07-25)

#### Features

* support more algorithm in CryptoKeyVersionAlgorithm 

### 0.21.0 (2023-07-10)

#### Features

* Support for AES Galois Counter Mode 
* Support for raw_encrypt and raw_decrypt RPCs ([#22469](https://github.com/googleapis/google-cloud-ruby/issues/22469)) 

### 0.20.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21675](https://github.com/googleapis/google-cloud-ruby/issues/21675)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.19.0 (2023-05-19)

#### Features

* add VerifyConnectivity RPC ([#21574](https://github.com/googleapis/google-cloud-ruby/issues/21574)) 

### 0.19.0 (2023-05-16)

#### Features

* add VerifyConnectivity RPC ([#21574](https://github.com/googleapis/google-cloud-ruby/issues/21574)) 

### 0.18.1 (2023-03-29)

#### Documentation

* Link to documentation describing support for other hash algorithms ([#21018](https://github.com/googleapis/google-cloud-ruby/issues/21018)) 

### 0.18.0 (2023-03-08)

#### Features

* Report reasons for failures of generation and external destruction 
* Support for controlling who can perform control plane operations on EKM. 
* Support for RPCs managing the singleton EKM config ([#20616](https://github.com/googleapis/google-cloud-ruby/issues/20616)) 
* Support for the EKM crypto space path. 

### 0.17.0 (2023-02-17)

#### Features

* Added support for REST transport ([#20443](https://github.com/googleapis/google-cloud-ruby/issues/20443)) 

### 0.16.0 (2022-12-09)

#### Features

* Added SHA-2 import methods ([#19468](https://github.com/googleapis/google-cloud-ruby/issues/19468)) 
* Renamed rsa_aes_wrapped_key parameter to wrapped_key 

### 0.15.0 (2022-11-16)

#### Features

* add support for additional HMAC algorithms 

### 0.14.0 (2022-10-21)

#### Features

* Provide easier access to IAM functionality via the standard IAMPolicy mixin client 
* Support Locations functionality using the Locations mixin client 

### 0.13.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.12.0 (2022-04-20)

#### Features

* Support for update masks when setting IAM policies

### 0.11.0 / 2022-02-08

#### Features

* Support for managing EKM connections

### 0.10.2 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.10.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.10.0 / 2021-10-21

#### Features

* Support for raw PKCS1 signing keys

### 0.9.0 / 2021-10-18

#### Features

* Added OAEP+SHA1 to the list of supported algorithms
* Support RSA encrypt with SHA-1 digest

### 0.8.0 / 2021-09-02

#### Features

* Ability to target an existing crypto_key_version for import

### 0.7.0 / 2021-08-11

#### Features

* Support for signing and verifying MAC tags
  * Support for the mac_sign call
  * Support for the mac_verify call
  * Support for the generate_random_bytes call
  * Support the import_only and destroy_scheduled_duration fields of CryptoKey
  * Support the protection_level field of PublicKey

#### Bug Fixes

* Honor client-level timeout configuration

### 0.6.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.6.1 / 2021-07-08

#### Bug Fixes

* Removed a proto file that is duplicated from the iam-v1 gem

### 0.6.0 / 2021-06-17

#### Features

* Add ECDSA secp256k1 to the list of supported algorithms

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.5.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.4.1 / 2021-02-16

#### Bug Fixes

* No longer retry on internal backend errors

### 0.4.0 / 2021-02-03

#### Features

* Use self-signed JWT credentials when possible

### 0.3.1 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.3.0 / 2020-09-03

#### Features

* Support for client integrity verification fields

### 0.2.4 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.2.3 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.2.2 / 2020-06-18

#### Documentation

* Add documentation and API enablement links to the readme

### 0.2.1 / 2020-06-08

#### Bug Fixes

* Eliminate a Ruby warning that appeared in some cases when accessing rpc-scoped configs

#### Documentation

* Fixed broken links in the reference documentation

### 0.2.0 / 2020-05-20

#### Features

* The quota_project can be set via configuration

### 0.1.1 / 2020-05-05

#### Documentation

* Clarify that timeouts are in seconds.

### 0.1.0 / 2020-04-23

Initial release.
