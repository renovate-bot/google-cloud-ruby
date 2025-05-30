# Release History

### 2.0.2 (2025-05-27)

#### Documentation

* Add h1 heading to migration docs ([#30436](https://github.com/googleapis/google-cloud-ruby/issues/30436)) 

### 2.0.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 2.0.0 (2025-02-13)

### ⚠ BREAKING CHANGES

* Removed dependency on google-cloud-web_risk-v1beta1 prerelease service

#### Features

* Removed dependency on google-cloud-web_risk-v1beta1 prerelease service 
* Updated google-cloud-web_risk-v1 dependency to version 1.x ([#29029](https://github.com/googleapis/google-cloud-ruby/issues/29029)) 

### 1.7.0 (2025-01-29)

#### Features

* Provide methods to determine whether services are available with the currently installed versioned client ([#28533](https://github.com/googleapis/google-cloud-ruby/issues/28533)) 
* Update Ruby version requirement to 3.0 

### 1.6.1 (2024-08-08)

#### Documentation

* Formatting updates to README.md ([#26634](https://github.com/googleapis/google-cloud-ruby/issues/26634)) 

### 1.6.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24880](https://github.com/googleapis/google-cloud-ruby/issues/24880)) 

### 1.5.0 (2024-01-15)

#### Features

* Support for universe_domain ([#24270](https://github.com/googleapis/google-cloud-ruby/issues/24270)) 

### 1.4.0 (2023-03-09)

#### Features

* Support REST transport ([#20769](https://github.com/googleapis/google-cloud-ruby/issues/20769)) 

### 1.3.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 1.2.3 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 1.2.2 / 2021-07-12

#### Documentation

* Clarified some language around authentication configuration

### 1.2.1 / 2021-06-30

#### Bug Fixes

* Expand dependencies to include future 1.x releases of versioned clients

### 1.2.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 1.1.3 / 2021-02-02

#### Documentation

* Clarify the role of main vs versioned clients in the readme

### 1.1.2 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds

### 1.1.1 / 2020-05-24

#### Documentation

* Cover exception changes in the migration guide

### 1.1.0 / 2020-05-21

#### Features

* The endpoint, scope, and quota_project can be set via configuration

### 1.0.0 / 2020-05-07

This is a major update over the older google-cloud-webrisk gem, with significant new features, improved documentation, and a fair number of breaking changes.

Among the highlights:

* Support for version V1 of the service.
* Separate client libraries are now provided for specific service versions.
* A new configuration mechanism makes it easier to control parameters such as endpoint address, network timeouts, and retry.
* A consistent method interface using keyword arguments for all fields, and supporting request proto objects.
* Helper methods for generating resource paths are more accessible.
* More consistent spelling of module names.

See the MIGRATING file in the documentation for more detailed information, and instructions for migrating from google-cloud-webrisk.
