# Changelog

### 0.7.0 (2025-07-15)

#### Features

* Added maximum_retail_price field (applicable to India only) 
* Renamed "gtin" field to "gtins" and deprecated the old field 

### 0.6.0 (2025-05-11)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.5.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.5.0 (2025-04-21)

#### Features

* A new field `automated_discounts` is added to message `google.shopping.merchant.products.v1beta.Product` ([#29456](https://github.com/googleapis/google-cloud-ruby/issues/29456)) 
#### Documentation

* Modified several comments 

### 0.4.0 (2025-03-18)

#### Features

* Support for product sustainability incentives 
* Support for the update_product_input RPC 

### 0.3.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Include note about validating externally-provided credentials 

### 0.2.0 (2024-12-10)

### ⚠ BREAKING CHANGES

* Fixed the gtin attribute type to properly reflect that it can include multiple GTINs

#### Features

* Provide opt-in debug logging 
* Support the member_price_effective_date and shipping_label fields on LoyaltyProgram 
#### Bug Fixes

* Fixed the gtin attribute type to properly reflect that it can include multiple GTINs 
#### Documentation

* Some clarifications and cross-reference links in the reference documentation 

### 0.1.2 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` 

### 0.1.1 (2024-08-08)

#### Documentation

* Formatting updates to README.md ([#26635](https://github.com/googleapis/google-cloud-ruby/issues/26635)) 

### 0.1.0 (2024-06-06)

#### Features

* Initial generation of google-shopping-merchant-products-v1beta ([#26060](https://github.com/googleapis/google-cloud-ruby/issues/26060)) 

## Release History
