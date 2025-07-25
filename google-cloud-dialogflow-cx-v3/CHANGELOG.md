# Changelog

### 1.8.0 (2025-07-15)

#### Features

* Add support for generator settings on fulfillment ([#30596](https://github.com/googleapis/google-cloud-ruby/issues/30596)) 
#### Documentation

* Clarify documentation for cases when multiple parameters are mutually exclusive for an RPC method ([#30624](https://github.com/googleapis/google-cloud-ruby/issues/30624)) 

### 1.7.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.6.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.6.0 (2025-03-10)

#### Features

* Change client_secret in OAuthConfig from required to optional ([#29310](https://github.com/googleapis/google-cloud-ruby/issues/29310)) 

### 1.5.0 (2025-03-04)

#### Features

* Agent resources report their Zone Separation and Zone Isolation status 
* Support the document processing mode for a data store connectdion 
#### Documentation

* Deprecated the populate_data_store_connection_signals query parameter 

### 1.4.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.3.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.2.0 (2024-11-13)

#### Features

* add options of client_certificate_settings, bigquery_export_settings, bearer_token_config and boost_control_spec; add support of ALAW encoding ([#27559](https://github.com/googleapis/google-cloud-ruby/issues/27559)) 

### 1.1.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.1.0 (2024-07-24)

#### Features

* added support for lock flow 
* added support for multi language settings in flow 
* added support for oauth and service agent auth for webhook. 
* added support for service directory in tools 
* expose PersonalizationSettings & SpeechSettings in v3 API. 
* expose store tts option in security settings 
* exposed DataStoreConnectionSignals ([#26508](https://github.com/googleapis/google-cloud-ruby/issues/26508)) 
#### Documentation

* clarified wording around audio redaction 
* clarified wording around enable_stackdriver_logging & enable_interaction_logging 
* clarified wording around start point of test config. 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.26.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24869](https://github.com/googleapis/google-cloud-ruby/issues/24869)) 

### 0.25.0 (2024-02-10)

#### Features

* Support `ExportEntityTypes` and `ImportEntityTypes` APIs for `EntityTypes` ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support `ServerStreamingDetectIntent` API for `Sessions` ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support new field `current_flow` for `QueryResult`  ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support new field `description` for `Page`  ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support new field `disable_data_store_fallback` for `KnowledgeConnectorSettings`  ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support new field `language_code` for `Changelog`  ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
* Support several new webhook related fields for `QueryResult`  ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 
#### Documentation

* Update documentation for several APIs ([#24792](https://github.com/googleapis/google-cloud-ruby/issues/24792)) 

### 0.24.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.24.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.24.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23778](https://github.com/googleapis/google-cloud-ruby/issues/23778)) 

### 0.23.0 (2024-01-10)

#### Features

* Query results include whether answer feedback is allowed 
* Support answer feedback collection settings in the Agent resource 
* Support barge-in behavior configuration during input audio streaming 
* Support end-user metadata and UCS search query configuration in query parameters 
* Support Generators service including CRUD operations on generator resources ([#23555](https://github.com/googleapis/google-cloud-ruby/issues/23555)) 
* Support submit_answer_feedback RPC 

### 0.22.0 (2023-09-29)

#### Features

* support advanced_settings and enable_generative_fallback for Fulfillment 
* support import and export intent  

### 0.21.0 (2023-09-12)

#### Features

* Support for AGENT_TRANSITION_ROUTE_GROUP resources 
* Support for Gen App Builder settings for agents 
* Support for get_generative_settings and update_generative_settings calls ([#22878](https://github.com/googleapis/google-cloud-ruby/issues/22878)) 
* Support for Knowledge Connector settings for flows and pages 
* Support for the description field of TransitionRoute 
* Support for the endpointing_timeout field of CloudConversationDebuggingInfo 
* Support for the knowledge_info_card field of ResponseMessage 
* Support for the retention_strategy field of SecuritySettings 
* Support for channel pool configuration ([#22919](https://github.com/googleapis/google-cloud-ruby/issues/22919)) 
#### Bug Fixes

* Fixed the namespace for ImportStrategy 

### 0.20.0 (2023-08-15)

#### Features

* added agent level route group ([#22764](https://github.com/googleapis/google-cloud-ruby/issues/22764)) 
* added flow import strategy 

### 0.19.0 (2023-07-11)

#### Features

* Support for specifying agent git integration settings 
* Support for specifying the git branch for export_agent and restore_agent ([#22512](https://github.com/googleapis/google-cloud-ruby/issues/22512)) 
* The response for export_agent provides the commit SHA 

### 0.18.0 (2023-06-20)

#### Features

* add include_bigquery_export_settings to ExportAgentRequest ([#22426](https://github.com/googleapis/google-cloud-ruby/issues/22426)) 

### 0.17.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21674](https://github.com/googleapis/google-cloud-ruby/issues/21674)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.16.0 (2023-05-09)

#### Features

* add debug info to StreamingDetectIntent 
* add dtmf digits to WebhookRequest 
* add FLOW as a new DiffType in TestRunDifference 
* extended CreateAgent timeout to 180 seconds 
* extended CreateAgent timeout to 180 seconds ([#21559](https://github.com/googleapis/google-cloud-ruby/issues/21559)) 

### 0.15.1 (2023-03-15)

#### Documentation

* Update quota usage information ([#20894](https://github.com/googleapis/google-cloud-ruby/issues/20894)) 

### 0.15.0 (2023-03-08)

#### Features

* Support REST transport ([#20626](https://github.com/googleapis/google-cloud-ruby/issues/20626)) 

### 0.14.0 (2023-02-28)

#### Features

* Support the persist_parameter_changes parameter to match_intent ([#20546](https://github.com/googleapis/google-cloud-ruby/issues/20546)) 

### 0.13.0 (2023-02-23)

#### Features

* Support for audio export destination in Google Cloud Storage ([#20493](https://github.com/googleapis/google-cloud-ruby/issues/20493)) 
* Support for text-to-speech settings for an Agent 

### 0.12.0 (2023-01-26)

#### Features

* Added JSON_PACKAGE data format for ExportAgentRequest ([#20065](https://github.com/googleapis/google-cloud-ruby/issues/20065)) 

### 0.11.0 (2023-01-15)

#### Features

* Include channel information in ResponseMessage ([#20014](https://github.com/googleapis/google-cloud-ruby/issues/20014)) 
* Specify channel in query parameters 

### 0.10.2 (2022-10-24)

#### Documentation

* Clarified TTL as time-to-live ([#19334](https://github.com/googleapis/google-cloud-ruby/issues/19334)) 

### 0.10.1 (2022-10-03)

#### Documentation

* Update SecuritySettings#gcs_bucket description ([#19244](https://github.com/googleapis/google-cloud-ruby/issues/19244)) 

### 0.10.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 
#### Documentation

* Clarify several field descriptions 

### 0.9.0 (2022-06-15)

#### Features

* Added support for the location mixin client
* Added support for webhook configuration

### 0.8.1 (2022-05-09)

#### Documentation

* Expand  documentation for diagnostic_info

### 0.8.0 (2022-04-28)

#### Features

* Support audio export settings

### 0.7.1 (2022-04-19)

#### Bug Fixes

* Remove unused requires
#### Documentation

* fix typos and add reference for Fulfilment tag

### 0.7.0 / 2022-03-30

#### Features

* Support for locking an agent for changes and setting the data format of an exported agent

#### Documentation

* Change documentation format

### 0.6.0 / 2022-03-09

#### Features

* provide option to add page in test config

### 0.5.0 / 2022-01-11

#### Features

* Added the display name of the current page in webhook requests

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.4.0 / 2021-12-07

#### Features

* Inform the client when a phone call should be transferred to a third-party endpoint
* Support for the compare_versions call

### 0.3.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.3.0 / 2021-10-21

#### Features

* Added support for changelogs

### 0.2.0 / 2021-10-18

#### Features

* Support for the deployment API

### 0.1.1 / 2021-08-30

#### Documentation

* Updated documentation for long-running calls

### 0.1.0 / 2021-08-23

#### Features

* Initial generation of google-cloud-dialogflow-cx-v3
