# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gdchardwaremanagement/v1alpha/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'
require 'google/type/datetime_pb'
require 'google/type/dayofweek_pb'
require 'google/type/postal_address_pb'
require 'google/type/timeofday_pb'


descriptor_data = "\n:google/cloud/gdchardwaremanagement/v1alpha/resources.proto\x12*google.cloud.gdchardwaremanagement.v1alpha\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x16google/type/date.proto\x1a\x1agoogle/type/datetime.proto\x1a\x1bgoogle/type/dayofweek.proto\x1a google/type/postal_address.proto\x1a\x1bgoogle/type/timeofday.proto\"\x90\n\n\x05Order\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\r \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12R\n\x06labels\x18\x04 \x03(\x0b\x32=.google.cloud.gdchardwaremanagement.v1alpha.Order.LabelsEntryB\x03\xe0\x41\x01\x12K\n\x05state\x18\x05 \x01(\x0e\x32\x37.google.cloud.gdchardwaremanagement.v1alpha.Order.StateB\x03\xe0\x41\x03\x12\x62\n\x14organization_contact\x18\x06 \x01(\x0b\x32?.google.cloud.gdchardwaremanagement.v1alpha.OrganizationContactB\x03\xe0\x41\x02\x12\x1d\n\x10target_workloads\x18\x07 \x03(\tB\x03\xe0\x41\x01\x12 \n\x13\x63ustomer_motivation\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x10\x66ulfillment_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x02\x12\x18\n\x0bregion_code\x18\n \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0eorder_form_uri\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12I\n\x04type\x18\x0c \x01(\x0e\x32\x36.google.cloud.gdchardwaremanagement.v1alpha.Order.TypeB\x03\xe0\x41\x03\x12\x34\n\x0bsubmit_time\x18\x0e \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x17\n\nbilling_id\x18\x0f \x01(\tB\x03\xe0\x41\x02\x12\\\n\x11\x65xisting_hardware\x18\x10 \x03(\x0b\x32<.google.cloud.gdchardwaremanagement.v1alpha.HardwareLocationB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xe4\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05\x44RAFT\x10\x01\x12\r\n\tSUBMITTED\x10\x02\x12\x11\n\rINFO_COMPLETE\x10\x0c\x12\x0c\n\x08\x41\x43\x43\x45PTED\x10\x03\x12\x1a\n\x16\x41\x44\x44ITIONAL_INFO_NEEDED\x10\x04\x12\x0c\n\x08\x42UILDING\x10\x05\x12\x0c\n\x08SHIPPING\x10\x06\x12\x0e\n\nINSTALLING\x10\x07\x12\n\n\x06\x46\x41ILED\x10\x08\x12\x17\n\x13PARTIALLY_COMPLETED\x10\t\x12\r\n\tCOMPLETED\x10\n\x12\r\n\tCANCELLED\x10\x0b\"/\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04PAID\x10\x01\x12\x07\n\x03POC\x10\x02:v\xea\x41s\n*gdchardwaremanagement.googleapis.com/Order\x12\x36projects/{project}/locations/{location}/orders/{order}*\x06orders2\x05order\"\xbb\x05\n\x04Site\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x18 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x19 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12Q\n\x06labels\x18\x04 \x03(\x0b\x32<.google.cloud.gdchardwaremanagement.v1alpha.Site.LabelsEntryB\x03\xe0\x41\x01\x12\x62\n\x14organization_contact\x18\x05 \x01(\x0b\x32?.google.cloud.gdchardwaremanagement.v1alpha.OrganizationContactB\x03\xe0\x41\x02\x12 \n\x13google_maps_pin_uri\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12Q\n\x0c\x61\x63\x63\x65ss_times\x18\x1a \x03(\x0b\x32\x36.google.cloud.gdchardwaremanagement.v1alpha.TimePeriodB\x03\xe0\x41\x01\x12\x12\n\x05notes\x18\x1b \x01(\tB\x03\xe0\x41\x01\x12\x1d\n\x10\x63ustomer_site_id\x18\x1c \x01(\tB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:q\xea\x41n\n)gdchardwaremanagement.googleapis.com/Site\x12\x34projects/{project}/locations/{location}/sites/{site}*\x05sites2\x04site\"\xea\x07\n\rHardwareGroup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12Z\n\x06labels\x18\x04 \x03(\x0b\x32\x45.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup.LabelsEntryB\x03\xe0\x41\x01\x12\x1b\n\x0ehardware_count\x18\x05 \x01(\x05\x42\x03\xe0\x41\x02\x12O\n\x06\x63onfig\x18\x06 \x01(\x0b\x32:.google.cloud.gdchardwaremanagement.v1alpha.HardwareConfigB\x03\xe0\x41\x02\x12?\n\x04site\x18\x07 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Site\x12S\n\x05state\x18\x08 \x01(\x0e\x32?.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup.StateB\x03\xe0\x41\x03\x12?\n\x04zone\x18\t \x01(\tB1\xe0\x41\x01\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Zone\x12;\n\x1brequested_installation_date\x18\n \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9a\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x41\x44\x44ITIONAL_INFO_NEEDED\x10\x01\x12\x0c\n\x08\x42UILDING\x10\x02\x12\x0c\n\x08SHIPPING\x10\x03\x12\x0e\n\nINSTALLING\x10\x04\x12\x17\n\x13PARTIALLY_INSTALLED\x10\x05\x12\r\n\tINSTALLED\x10\x06\x12\n\n\x06\x46\x41ILED\x10\x07:\xaf\x01\xea\x41\xab\x01\n2gdchardwaremanagement.googleapis.com/HardwareGroup\x12Vprojects/{project}/locations/{location}/orders/{order}/hardwareGroups/{hardware_group}*\x0ehardwareGroups2\rhardwareGroup\"\xe0\x10\n\x08Hardware\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12U\n\x06labels\x18\x05 \x03(\x0b\x32@.google.cloud.gdchardwaremanagement.v1alpha.Hardware.LabelsEntryB\x03\xe0\x41\x01\x12\x41\n\x05order\x18\x06 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gdchardwaremanagement.googleapis.com/Order\x12R\n\x0ehardware_group\x18\x07 \x01(\tB:\xe0\x41\x03\xfa\x41\x34\n2gdchardwaremanagement.googleapis.com/HardwareGroup\x12?\n\x04site\x18\x08 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Site\x12N\n\x05state\x18\t \x01(\x0e\x32:.google.cloud.gdchardwaremanagement.v1alpha.Hardware.StateB\x03\xe0\x41\x03\x12\x14\n\x07\x63iq_uri\x18\n \x01(\tB\x03\xe0\x41\x03\x12O\n\x06\x63onfig\x18\x0b \x01(\x0b\x32:.google.cloud.gdchardwaremanagement.v1alpha.HardwareConfigB\x03\xe0\x41\x02\x12;\n\x1b\x65stimated_installation_date\x18\x0c \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x03\x12\\\n\rphysical_info\x18\r \x01(\x0b\x32@.google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfoB\x03\xe0\x41\x01\x12\x64\n\x11installation_info\x18\x0e \x01(\x0b\x32\x44.google.cloud.gdchardwaremanagement.v1alpha.HardwareInstallationInfoB\x03\xe0\x41\x01\x12?\n\x04zone\x18\x0f \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Zone\x12;\n\x1brequested_installation_date\x18\x10 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x01\x12\x38\n\x18\x61\x63tual_installation_date\x18\x11 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x03\x12\\\n\rmachine_infos\x18\x14 \x03(\x0b\x32@.google.cloud.gdchardwaremanagement.v1alpha.Hardware.MachineInfoB\x03\xe0\x41\x03\x1a\xf1\x01\n\nMacAddress\x12\x14\n\x07\x61\x64\x64ress\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12^\n\x04type\x18\x02 \x01(\x0e\x32K.google.cloud.gdchardwaremanagement.v1alpha.Hardware.MacAddress.AddressTypeB\x03\xe0\x41\x03\x12!\n\x0cipv4_address\x18\x03 \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x02\"J\n\x0b\x41\x64\x64ressType\x12\x1c\n\x18\x41\x44\x44RESS_TYPE_UNSPECIFIED\x10\x00\x12\x07\n\x03NIC\x10\x01\x12\x07\n\x03\x42MC\x10\x02\x12\x0b\n\x07VIRTUAL\x10\x03\x1a\x9c\x01\n\x08\x44iskInfo\x12\x19\n\x0cmanufacturer\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04slot\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x1a\n\rserial_number\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04psid\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0bpart_number\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0cmodel_number\x18\x06 \x01(\tB\x03\xe0\x41\x03\x1a\xef\x01\n\x0bMachineInfo\x12\x18\n\x0bservice_tag\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12[\n\rmac_addresses\x18\x02 \x03(\x0b\x32?.google.cloud.gdchardwaremanagement.v1alpha.Hardware.MacAddressB\x03\xe0\x41\x03\x12\x11\n\x04name\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12V\n\ndisk_infos\x18\x04 \x03(\x0b\x32=.google.cloud.gdchardwaremanagement.v1alpha.Hardware.DiskInfoB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x81\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x41\x44\x44ITIONAL_INFO_NEEDED\x10\x01\x12\x0c\n\x08\x42UILDING\x10\x02\x12\x0c\n\x08SHIPPING\x10\x03\x12\x0e\n\nINSTALLING\x10\x04\x12\r\n\tINSTALLED\x10\x05\x12\n\n\x06\x46\x41ILED\x10\x06:\x84\x01\xea\x41\x80\x01\n-gdchardwaremanagement.googleapis.com/Hardware\x12;projects/{project}/locations/{location}/hardware/{hardware}*\x08hardware2\x08hardware\"\xa1\x04\n\x07\x43omment\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12T\n\x06labels\x18\x03 \x03(\x0b\x32?.google.cloud.gdchardwaremanagement.v1alpha.Comment.LabelsEntryB\x03\xe0\x41\x01\x12\x13\n\x06\x61uthor\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04text\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12=\n\x14\x63ustomer_viewed_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12N\n\rauthor_entity\x18\x07 \x01(\x0e\x32\x32.google.cloud.gdchardwaremanagement.v1alpha.EntityB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x90\x01\xea\x41\x8c\x01\n,gdchardwaremanagement.googleapis.com/Comment\x12Iprojects/{project}/locations/{location}/orders/{order}/comments/{comment}*\x08\x63omments2\x07\x63omment\"\xb1\x03\n\x0e\x43hangeLogEntry\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12[\n\x06labels\x18\x03 \x03(\x0b\x32\x46.google.cloud.gdchardwaremanagement.v1alpha.ChangeLogEntry.LabelsEntryB\x03\xe0\x41\x01\x12\x10\n\x03log\x18\x04 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\xb7\x01\xea\x41\xb3\x01\n3gdchardwaremanagement.googleapis.com/ChangeLogEntry\x12Zprojects/{project}/locations/{location}/orders/{order}/changeLogEntries/{change_log_entry}*\x10\x63hangeLogEntries2\x0e\x63hangeLogEntry\"\x8c\x05\n\x03Sku\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12J\n\x06\x63onfig\x18\x06 \x01(\x0b\x32\x35.google.cloud.gdchardwaremanagement.v1alpha.SkuConfigB\x03\xe0\x41\x03\x12O\n\tinstances\x18\x07 \x03(\x0b\x32\x37.google.cloud.gdchardwaremanagement.v1alpha.SkuInstanceB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0brevision_id\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x16\n\tis_active\x18\n \x01(\x08\x42\x03\xe0\x41\x03\x12G\n\x04type\x18\x0b \x01(\x0e\x32\x34.google.cloud.gdchardwaremanagement.v1alpha.Sku.TypeB\x03\xe0\x41\x03\x12\x17\n\nvcpu_count\x18\x0c \x01(\x05\x42\x03\xe0\x41\x03\"2\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04RACK\x10\x01\x12\n\n\x06SERVER\x10\x02:l\xea\x41i\n(gdchardwaremanagement.googleapis.com/Sku\x12\x32projects/{project}/locations/{location}/skus/{sku}*\x04skus2\x03sku\"\xf1\t\n\x04Zone\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12Q\n\x06labels\x18\x04 \x03(\x0b\x32<.google.cloud.gdchardwaremanagement.v1alpha.Zone.LabelsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12J\n\x05state\x18\x08 \x01(\x0e\x32\x36.google.cloud.gdchardwaremanagement.v1alpha.Zone.StateB\x03\xe0\x41\x03\x12J\n\x08\x63ontacts\x18\t \x03(\x0b\x32\x33.google.cloud.gdchardwaremanagement.v1alpha.ContactB\x03\xe0\x41\x02\x12\x14\n\x07\x63iq_uri\x18\n \x01(\tB\x03\xe0\x41\x03\x12Z\n\x0enetwork_config\x18\x0b \x01(\x0b\x32=.google.cloud.gdchardwaremanagement.v1alpha.ZoneNetworkConfigB\x03\xe0\x41\x01\x12\x1f\n\x12globally_unique_id\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12\x61\n\x14subscription_configs\x18\r \x03(\x0b\x32>.google.cloud.gdchardwaremanagement.v1alpha.SubscriptionConfigB\x03\xe0\x41\x03\x12\x63\n\x12provisioning_state\x18\x0e \x01(\x0e\x32\x42.google.cloud.gdchardwaremanagement.v1alpha.Zone.ProvisioningStateB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xd8\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x41\x44\x44ITIONAL_INFO_NEEDED\x10\x01\x12\r\n\tPREPARING\x10\x02\x12,\n(READY_FOR_CUSTOMER_FACTORY_TURNUP_CHECKS\x10\x05\x12\x19\n\x15READY_FOR_SITE_TURNUP\x10\x06\x12)\n%CUSTOMER_FACTORY_TURNUP_CHECKS_FAILED\x10\x07\x12\n\n\x06\x41\x43TIVE\x10\x03\x12\r\n\tCANCELLED\x10\x04\"\x8b\x01\n\x11ProvisioningState\x12\"\n\x1ePROVISIONING_STATE_UNSPECIFIED\x10\x00\x12\x19\n\x15PROVISIONING_REQUIRED\x10\x01\x12\x1c\n\x18PROVISIONING_IN_PROGRESS\x10\x02\x12\x19\n\x15PROVISIONING_COMPLETE\x10\x03:q\xea\x41n\n)gdchardwaremanagement.googleapis.com/Zone\x12\x34projects/{project}/locations/{location}/zones/{zone}*\x05zones2\x04zone\"\xbb\x01\n\x13OrganizationContact\x12\x30\n\x07\x61\x64\x64ress\x18\x01 \x01(\x0b\x32\x1a.google.type.PostalAddressB\x03\xe0\x41\x02\x12\x12\n\x05\x65mail\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05phone\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12J\n\x08\x63ontacts\x18\x04 \x03(\x0b\x32\x33.google.cloud.gdchardwaremanagement.v1alpha.ContactB\x03\xe0\x41\x02\"\xe9\x01\n\x07\x43ontact\x12\x17\n\ngiven_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0b\x66\x61mily_name\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x65mail\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05phone\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12-\n\ttime_zone\x18\x05 \x01(\x0b\x32\x15.google.type.TimeZoneB\x03\xe0\x41\x01\x12T\n\x0freachable_times\x18\x06 \x03(\x0b\x32\x36.google.cloud.gdchardwaremanagement.v1alpha.TimePeriodB\x03\xe0\x41\x01\"\xce\x01\n\x0eHardwareConfig\x12=\n\x03sku\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(gdchardwaremanagement.googleapis.com/Sku\x12R\n\x0cpower_supply\x18\x02 \x01(\x0e\x32\x37.google.cloud.gdchardwaremanagement.v1alpha.PowerSupplyB\x03\xe0\x41\x02\x12)\n\x1csubscription_duration_months\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\"C\n\tSkuConfig\x12\x0b\n\x03\x63pu\x18\x01 \x01(\t\x12\x0b\n\x03gpu\x18\x02 \x01(\t\x12\x0b\n\x03ram\x18\x03 \x01(\t\x12\x0f\n\x07storage\x18\x04 \x01(\t\"\xca\x01\n\x0bSkuInstance\x12\x13\n\x0bregion_code\x18\x01 \x01(\t\x12M\n\x0cpower_supply\x18\x02 \x01(\x0e\x32\x37.google.cloud.gdchardwaremanagement.v1alpha.PowerSupply\x12\x13\n\x0b\x62illing_sku\x18\x03 \x01(\t\x12\x1c\n\x14\x62illing_sku_per_vcpu\x18\x04 \x01(\t\x12$\n\x1csubscription_duration_months\x18\x05 \x01(\x05\"\xe3\x05\n\x14HardwarePhysicalInfo\x12s\n\x10power_receptacle\x18\x01 \x01(\x0e\x32T.google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.PowerReceptacleTypeB\x03\xe0\x41\x02\x12o\n\x0enetwork_uplink\x18\x02 \x01(\x0e\x32R.google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.NetworkUplinkTypeB\x03\xe0\x41\x02\x12^\n\x07voltage\x18\x03 \x01(\x0e\x32H.google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.VoltageB\x03\xe0\x41\x02\x12^\n\x07\x61mperes\x18\x04 \x01(\x0e\x32H.google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.AmperesB\x03\xe0\x41\x02\"f\n\x13PowerReceptacleType\x12%\n!POWER_RECEPTACLE_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tNEMA_5_15\x10\x01\x12\x08\n\x04\x43_13\x10\x02\x12\x0f\n\x0bSTANDARD_EU\x10\x03\"C\n\x11NetworkUplinkType\x12#\n\x1fNETWORK_UPLINK_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05RJ_45\x10\x01\"D\n\x07Voltage\x12\x17\n\x13VOLTAGE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bVOLTAGE_110\x10\x01\x12\x0f\n\x0bVOLTAGE_220\x10\x03\"2\n\x07\x41mperes\x12\x17\n\x13\x41MPERES_UNSPECIFIED\x10\x00\x12\x0e\n\nAMPERES_15\x10\x01\"\xd5\x03\n\x18HardwareInstallationInfo\x12\x1a\n\rrack_location\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\"\n\x15power_distance_meters\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x12#\n\x16switch_distance_meters\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\x12Y\n\x14rack_unit_dimensions\x18\x04 \x01(\x0b\x32\x36.google.cloud.gdchardwaremanagement.v1alpha.DimensionsB\x03\xe0\x41\x02\x12N\n\nrack_space\x18\x05 \x01(\x0b\x32\x35.google.cloud.gdchardwaremanagement.v1alpha.RackSpaceB\x03\xe0\x41\x02\x12\x65\n\track_type\x18\x06 \x01(\x0e\x32M.google.cloud.gdchardwaremanagement.v1alpha.HardwareInstallationInfo.RackTypeB\x03\xe0\x41\x02\"B\n\x08RackType\x12\x19\n\x15RACK_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08TWO_POST\x10\x01\x12\r\n\tFOUR_POST\x10\x02\"\xb0\x03\n\x11ZoneNetworkConfig\x12,\n\x17machine_mgmt_ipv4_range\x18\x01 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12/\n\x1akubernetes_node_ipv4_range\x18\x02 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12\x38\n#kubernetes_control_plane_ipv4_range\x18\x03 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12W\n\x16management_ipv4_subnet\x18\x04 \x01(\x0b\x32\x32.google.cloud.gdchardwaremanagement.v1alpha.SubnetB\x03\xe0\x41\x02\x12W\n\x16kubernetes_ipv4_subnet\x18\x05 \x01(\x0b\x32\x32.google.cloud.gdchardwaremanagement.v1alpha.SubnetB\x03\xe0\x41\x01\x12\'\n\x12\x64ns_ipv4_addresses\x18\x06 \x03(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12\'\n\x1akubernetes_primary_vlan_id\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01\"]\n\x06Subnet\x12\"\n\raddress_range\x18\x01 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\x12/\n\x1a\x64\x65\x66\x61ult_gateway_ip_address\x18\x02 \x01(\tB\x0b\xe0\x41\x02\xe2\x8c\xcf\xd7\x08\x02\x08\x02\"\x97\x01\n\nTimePeriod\x12/\n\nstart_time\x18\x01 \x01(\x0b\x32\x16.google.type.TimeOfDayB\x03\xe0\x41\x02\x12-\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x16.google.type.TimeOfDayB\x03\xe0\x41\x02\x12)\n\x04\x64\x61ys\x18\x03 \x03(\x0e\x32\x16.google.type.DayOfWeekB\x03\xe0\x41\x02\"^\n\nDimensions\x12\x19\n\x0cwidth_inches\x18\x01 \x01(\x02\x42\x03\xe0\x41\x02\x12\x1a\n\rheight_inches\x18\x02 \x01(\x02\x42\x03\xe0\x41\x02\x12\x19\n\x0c\x64\x65pth_inches\x18\x03 \x01(\x02\x42\x03\xe0\x41\x02\"E\n\tRackSpace\x12\x1c\n\x0fstart_rack_unit\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1a\n\rend_rack_unit\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\"\xbf\x01\n\x10HardwareLocation\x12?\n\x04site\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Site\x12\x1a\n\rrack_location\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12N\n\nrack_space\x18\x03 \x03(\x0b\x32\x35.google.cloud.gdchardwaremanagement.v1alpha.RackSpaceB\x03\xe0\x41\x01\"\xb7\x02\n\x12SubscriptionConfig\x12\x1c\n\x0fsubscription_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\nbilling_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x64\n\x05state\x18\x03 \x01(\x0e\x32P.google.cloud.gdchardwaremanagement.v1alpha.SubscriptionConfig.SubscriptionStateB\x03\xe0\x41\x03\"\x83\x01\n\x11SubscriptionState\x12\"\n\x1eSUBSCRIPTION_STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\x0c\n\x08INACTIVE\x10\x02\x12\t\n\x05\x45RROR\x10\x03\x12\x16\n\x12\x46\x41ILED_TO_RETRIEVE\x10\x04\x12\r\n\tCOMPLETED\x10\x05*U\n\x0bPowerSupply\x12\x1c\n\x18POWER_SUPPLY_UNSPECIFIED\x10\x00\x12\x13\n\x0fPOWER_SUPPLY_AC\x10\x01\x12\x13\n\x0fPOWER_SUPPLY_DC\x10\x02*F\n\x06\x45ntity\x12\x16\n\x12\x45NTITY_UNSPECIFIED\x10\x00\x12\n\n\x06GOOGLE\x10\x01\x12\x0c\n\x08\x43USTOMER\x10\x02\x12\n\n\x06VENDOR\x10\x03\x42\xb2\x02\n.com.google.cloud.gdchardwaremanagement.v1alphaB\x0eResourcesProtoP\x01Zdcloud.google.com/go/gdchardwaremanagement/apiv1alpha/gdchardwaremanagementpb;gdchardwaremanagementpb\xaa\x02*Google.Cloud.GdcHardwareManagement.V1Alpha\xca\x02*Google\\Cloud\\GdcHardwareManagement\\V1alpha\xea\x02-Google::Cloud::GDCHardwareManagement::V1alphab\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.type.Date", "google/type/date.proto"],
    ["google.type.PostalAddress", "google/type/postal_address.proto"],
    ["google.type.TimeZone", "google/type/datetime.proto"],
    ["google.type.TimeOfDay", "google/type/timeofday.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module GDCHardwareManagement
      module V1alpha
        Order = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Order").msgclass
        Order::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Order.State").enummodule
        Order::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Order.Type").enummodule
        Site = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Site").msgclass
        HardwareGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup").msgclass
        HardwareGroup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup.State").enummodule
        Hardware = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware").msgclass
        Hardware::MacAddress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware.MacAddress").msgclass
        Hardware::MacAddress::AddressType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware.MacAddress.AddressType").enummodule
        Hardware::DiskInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware.DiskInfo").msgclass
        Hardware::MachineInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware.MachineInfo").msgclass
        Hardware::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Hardware.State").enummodule
        Comment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Comment").msgclass
        ChangeLogEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ChangeLogEntry").msgclass
        Sku = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Sku").msgclass
        Sku::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Sku.Type").enummodule
        Zone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Zone").msgclass
        Zone::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Zone.State").enummodule
        Zone::ProvisioningState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Zone.ProvisioningState").enummodule
        OrganizationContact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.OrganizationContact").msgclass
        Contact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Contact").msgclass
        HardwareConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareConfig").msgclass
        SkuConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SkuConfig").msgclass
        SkuInstance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SkuInstance").msgclass
        HardwarePhysicalInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo").msgclass
        HardwarePhysicalInfo::PowerReceptacleType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.PowerReceptacleType").enummodule
        HardwarePhysicalInfo::NetworkUplinkType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.NetworkUplinkType").enummodule
        HardwarePhysicalInfo::Voltage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.Voltage").enummodule
        HardwarePhysicalInfo::Amperes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwarePhysicalInfo.Amperes").enummodule
        HardwareInstallationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareInstallationInfo").msgclass
        HardwareInstallationInfo::RackType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareInstallationInfo.RackType").enummodule
        ZoneNetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ZoneNetworkConfig").msgclass
        Subnet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Subnet").msgclass
        TimePeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.TimePeriod").msgclass
        Dimensions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Dimensions").msgclass
        RackSpace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.RackSpace").msgclass
        HardwareLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.HardwareLocation").msgclass
        SubscriptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SubscriptionConfig").msgclass
        SubscriptionConfig::SubscriptionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SubscriptionConfig.SubscriptionState").enummodule
        PowerSupply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.PowerSupply").enummodule
        Entity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.Entity").enummodule
      end
    end
  end
end
