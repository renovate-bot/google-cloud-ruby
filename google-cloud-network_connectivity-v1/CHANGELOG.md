# Changelog

### 1.7.0 (2025-07-24)

#### Features

* add Network Connectivity Center APIs for Internal Range service ([#30707](https://github.com/googleapis/google-cloud-ruby/issues/30707)) 

### 1.6.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.5.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.5.0 (2025-04-21)

#### Features

* expand QuotaFailure with quota error details ([#29460](https://github.com/googleapis/google-cloud-ruby/issues/29460)) 

### 1.4.0 (2025-03-25)

#### Features

* Support for accept_spoke_update and reject_spoke_update RPCs 
* Support for CrossNetworkAutomationService calls 
* Support for proposed include and exclude support ranges in a LinkedVpcNetwork 
* Support for Spoke etags and the list of fields waiting for admin approval 

### 1.3.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.0 (2024-12-04)

#### Features

* Support for dynamic routes 
* Support for IP ranges allowed to be included during import from hub 
* Support for the auto_accept and route_table fields on the Group resource 
* Support for the linked_producer_vpc_network field on the Spoke resource 
* Support for the policy_mode, preset_topology, and export_psc fields on the Hub resource 
* Support for the priority, next_hop_vpn_tunnel, next_hop_router_appliance_instance, and next_hop_interconnect_attachment fields on the Route resource 
* Support for the producer_vpc_spokes field on the LinkedVpcNetwork resource 
* Support for the query_hub_status RPC 
* Support for the update_group RPC 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.10.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24873](https://github.com/googleapis/google-cloud-ruby/issues/24873)) 

### 0.9.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.9.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.9.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23782](https://github.com/googleapis/google-cloud-ruby/issues/23782)) 

### 0.8.0 (2023-10-03)

#### Features

* support accept_hub_spoke, list_hub_spokes, reject_hub_spoke apis 
* support list_groups, get_group, get_route, get_route_table, list_route_tables, list_routes apis 

### 0.7.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22921](https://github.com/googleapis/google-cloud-ruby/issues/22921)) 
* Added support for managing policy-based routes ([#23300](https://github.com/googleapis/google-cloud-ruby/issues/23300)) 

### 0.6.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21676](https://github.com/googleapis/google-cloud-ruby/issues/21676)) 

### 0.5.0 (2023-02-17)

#### Features

* Include the location and iam_policy mixin clients ([#20458](https://github.com/googleapis/google-cloud-ruby/issues/20458)) 

### 0.4.1 (2023-02-01)

#### Bug Fixes

* Remove policy_based_routing_service as it introduced breaking changes ([#20071](https://github.com/googleapis/google-cloud-ruby/issues/20071)) 

### 0.4.0 (2022-11-07)

#### Features

* Added support for policy-based routing ([#19362](https://github.com/googleapis/google-cloud-ruby/issues/19362)) 

### 0.3.0 (2022-07-05)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.2.0 / 2022-02-16

#### Features

* Add RoutingVPC#required_for_new_site_to_site_data_transfer_spokes field

### 0.1.4 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.3 / 2021-11-11

#### Documentation

* Document hub and spoke ID parameters as required

### 0.1.2 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.1 / 2021-08-25

#### Bug Fixes

* Remove unimplemented methods

### 0.1.0 / 2021-08-20

#### Features

* Initial generation of google-cloud-network_connectivity-v1
