# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gdchardwaremanagement/v1alpha/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/cloud/gdchardwaremanagement/v1alpha/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n8google/cloud/gdchardwaremanagement/v1alpha/service.proto\x12*google.cloud.gdchardwaremanagement.v1alpha\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a:google/cloud/gdchardwaremanagement/v1alpha/resources.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb4\x01\n\x11ListOrdersRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*gdchardwaremanagement.googleapis.com/Order\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x85\x01\n\x12ListOrdersResponse\x12\x41\n\x06orders\x18\x01 \x03(\x0b\x32\x31.google.cloud.gdchardwaremanagement.v1alpha.Order\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"S\n\x0fGetOrderRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gdchardwaremanagement.googleapis.com/Order\"\xcf\x01\n\x12\x43reateOrderRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*gdchardwaremanagement.googleapis.com/Order\x12\x15\n\x08order_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x45\n\x05order\x18\x03 \x01(\x0b\x32\x31.google.cloud.gdchardwaremanagement.v1alpha.OrderB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xaa\x01\n\x12UpdateOrderRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x45\n\x05order\x18\x02 \x01(\x0b\x32\x31.google.cloud.gdchardwaremanagement.v1alpha.OrderB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x83\x01\n\x12\x44\x65leteOrderRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gdchardwaremanagement.googleapis.com/Order\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x66orce\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\x8a\x02\n\x12SubmitOrderRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*gdchardwaremanagement.googleapis.com/Order\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12V\n\x04type\x18\x03 \x01(\x0e\x32\x43.google.cloud.gdchardwaremanagement.v1alpha.SubmitOrderRequest.TypeB\x03\xe0\x41\x01\"A\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x10\n\x0cINFO_PENDING\x10\x01\x12\x11\n\rINFO_COMPLETE\x10\x02\"\xb2\x01\n\x10ListSitesRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gdchardwaremanagement.googleapis.com/Site\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x82\x01\n\x11ListSitesResponse\x12?\n\x05sites\x18\x01 \x03(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.Site\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x0eGetSiteRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Site\"\xca\x01\n\x11\x43reateSiteRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gdchardwaremanagement.googleapis.com/Site\x12\x14\n\x07site_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x43\n\x04site\x18\x03 \x01(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.SiteB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xa7\x01\n\x11UpdateSiteRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x43\n\x04site\x18\x02 \x01(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.SiteB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"u\n\x11\x44\x65leteSiteRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Site\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xc4\x01\n\x19ListHardwareGroupsRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\x12\x32gdchardwaremanagement.googleapis.com/HardwareGroup\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x9e\x01\n\x1aListHardwareGroupsResponse\x12R\n\x0fhardware_groups\x18\x01 \x03(\x0b\x32\x39.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"c\n\x17GetHardwareGroupRequest\x12H\n\x04name\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\n2gdchardwaremanagement.googleapis.com/HardwareGroup\"\xf9\x01\n\x1a\x43reateHardwareGroupRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\x12\x32gdchardwaremanagement.googleapis.com/HardwareGroup\x12\x1e\n\x11hardware_group_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12V\n\x0ehardware_group\x18\x03 \x01(\x0b\x32\x39.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroupB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xc3\x01\n\x1aUpdateHardwareGroupRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12V\n\x0ehardware_group\x18\x02 \x01(\x0b\x32\x39.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroupB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x1a\x44\x65leteHardwareGroupRequest\x12H\n\x04name\x18\x01 \x01(\tB:\xe0\x41\x02\xfa\x41\x34\n2gdchardwaremanagement.googleapis.com/HardwareGroup\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xb9\x01\n\x13ListHardwareRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-gdchardwaremanagement.googleapis.com/Hardware\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x8c\x01\n\x14ListHardwareResponse\x12\x46\n\x08hardware\x18\x01 \x03(\x0b\x32\x34.google.cloud.gdchardwaremanagement.v1alpha.Hardware\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Y\n\x12GetHardwareRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-gdchardwaremanagement.googleapis.com/Hardware\"\xc5\x01\n\x15\x43reateHardwareRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-gdchardwaremanagement.googleapis.com/Hardware\x12\x18\n\x0bhardware_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12K\n\x08hardware\x18\x03 \x01(\x0b\x32\x34.google.cloud.gdchardwaremanagement.v1alpha.HardwareB\x03\xe0\x41\x02\"\xb3\x01\n\x15UpdateHardwareRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12K\n\x08hardware\x18\x02 \x01(\x0b\x32\x34.google.cloud.gdchardwaremanagement.v1alpha.HardwareB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"}\n\x15\x44\x65leteHardwareRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-gdchardwaremanagement.googleapis.com/Hardware\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xb8\x01\n\x13ListCommentsRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\x12,gdchardwaremanagement.googleapis.com/Comment\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x8b\x01\n\x14ListCommentsResponse\x12\x45\n\x08\x63omments\x18\x01 \x03(\x0b\x32\x33.google.cloud.gdchardwaremanagement.v1alpha.Comment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"W\n\x11GetCommentRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,gdchardwaremanagement.googleapis.com/Comment\"\xd9\x01\n\x14\x43reateCommentRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\x12,gdchardwaremanagement.googleapis.com/Comment\x12\x17\n\ncomment_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12I\n\x07\x63omment\x18\x03 \x01(\x0b\x32\x33.google.cloud.gdchardwaremanagement.v1alpha.CommentB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x92\x02\n\x1cRecordActionOnCommentRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,gdchardwaremanagement.googleapis.com/Comment\x12m\n\x0b\x61\x63tion_type\x18\x02 \x01(\x0e\x32S.google.cloud.gdchardwaremanagement.v1alpha.RecordActionOnCommentRequest.ActionTypeB\x03\xe0\x41\x02\"?\n\nActionType\x12\x1b\n\x17\x41\x43TION_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04READ\x10\x01\x12\n\n\x06UNREAD\x10\x02\"\xc7\x01\n\x1bListChangeLogEntriesRequest\x12K\n\x06parent\x18\x01 \x01(\tB;\xe0\x41\x02\xfa\x41\x35\x12\x33gdchardwaremanagement.googleapis.com/ChangeLogEntry\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\xa4\x01\n\x1cListChangeLogEntriesResponse\x12V\n\x12\x63hange_log_entries\x18\x01 \x03(\x0b\x32:.google.cloud.gdchardwaremanagement.v1alpha.ChangeLogEntry\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"e\n\x18GetChangeLogEntryRequest\x12I\n\x04name\x18\x01 \x01(\tB;\xe0\x41\x02\xfa\x41\x35\n3gdchardwaremanagement.googleapis.com/ChangeLogEntry\"\xb0\x01\n\x0fListSkusRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(gdchardwaremanagement.googleapis.com/Sku\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x10ListSkusResponse\x12=\n\x04skus\x18\x01 \x03(\x0b\x32/.google.cloud.gdchardwaremanagement.v1alpha.Sku\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"O\n\rGetSkuRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(gdchardwaremanagement.googleapis.com/Sku\"\xb2\x01\n\x10ListZonesRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gdchardwaremanagement.googleapis.com/Zone\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x82\x01\n\x11ListZonesResponse\x12?\n\x05zones\x18\x01 \x03(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.Zone\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x0eGetZoneRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Zone\"\xd2\x01\n\x11\x43reateZoneRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)gdchardwaremanagement.googleapis.com/Zone\x12\x14\n\x07zone_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x43\n\x04zone\x18\x03 \x01(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.ZoneB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xaf\x01\n\x11UpdateZoneRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x43\n\x04zone\x18\x02 \x01(\x0b\x32\x30.google.cloud.gdchardwaremanagement.v1alpha.ZoneB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x03 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"u\n\x11\x44\x65leteZoneRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Zone\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xfe\x04\n\x16SignalZoneStateRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)gdchardwaremanagement.googleapis.com/Zone\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x12i\n\x0cstate_signal\x18\x03 \x01(\x0e\x32N.google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest.StateSignalB\x03\xe0\x41\x01\x12\x82\x01\n\x19provisioning_state_signal\x18\x04 \x01(\x0e\x32Z.google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest.ProvisioningStateSignalB\x03\xe0\x41\x01\"\x92\x01\n\x0bStateSignal\x12\x1c\n\x18STATE_SIGNAL_UNSPECIFIED\x10\x00\x12 \n\x1c\x46\x41\x43TORY_TURNUP_CHECKS_PASSED\x10\x01\x12\x1d\n\x15READY_FOR_SITE_TURNUP\x10\x01\x1a\x02\x08\x01\x12 \n\x1c\x46\x41\x43TORY_TURNUP_CHECKS_FAILED\x10\x02\x1a\x02\x10\x01\"}\n\x17ProvisioningStateSignal\x12)\n%PROVISIONING_STATE_SIGNAL_UNSPECIFIED\x10\x00\x12\x1c\n\x18PROVISIONING_IN_PROGRESS\x10\x01\x12\x19\n\x15PROVISIONING_COMPLETE\x10\x02\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xd3>\n\x15GDCHardwareManagement\x12\xcd\x01\n\nListOrders\x12=.google.cloud.gdchardwaremanagement.v1alpha.ListOrdersRequest\x1a>.google.cloud.gdchardwaremanagement.v1alpha.ListOrdersResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1alpha/{parent=projects/*/locations/*}/orders\x12\xba\x01\n\x08GetOrder\x12;.google.cloud.gdchardwaremanagement.v1alpha.GetOrderRequest\x1a\x31.google.cloud.gdchardwaremanagement.v1alpha.Order\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1alpha/{name=projects/*/locations/*/orders/*}\x12\xe1\x01\n\x0b\x43reateOrder\x12>.google.cloud.gdchardwaremanagement.v1alpha.CreateOrderRequest\x1a\x1d.google.longrunning.Operation\"s\xca\x41\x1a\n\x05Order\x12\x11OperationMetadata\xda\x41\x15parent,order,order_id\x82\xd3\xe4\x93\x02\x38\"//v1alpha/{parent=projects/*/locations/*}/orders:\x05order\x12\xe3\x01\n\x0bUpdateOrder\x12>.google.cloud.gdchardwaremanagement.v1alpha.UpdateOrderRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41\x1a\n\x05Order\x12\x11OperationMetadata\xda\x41\x11order,update_mask\x82\xd3\xe4\x93\x02>25/v1alpha/{order.name=projects/*/locations/*/orders/*}:\x05order\x12\xd9\x01\n\x0b\x44\x65leteOrder\x12>.google.cloud.gdchardwaremanagement.v1alpha.DeleteOrderRequest\x1a\x1d.google.longrunning.Operation\"k\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1alpha/{name=projects/*/locations/*/orders/*}\x12\xd3\x01\n\x0bSubmitOrder\x12>.google.cloud.gdchardwaremanagement.v1alpha.SubmitOrderRequest\x1a\x1d.google.longrunning.Operation\"e\xca\x41\x1a\n\x05Order\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02;\"6/v1alpha/{name=projects/*/locations/*/orders/*}:submit:\x01*\x12\xc9\x01\n\tListSites\x12<.google.cloud.gdchardwaremanagement.v1alpha.ListSitesRequest\x1a=.google.cloud.gdchardwaremanagement.v1alpha.ListSitesResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1alpha/{parent=projects/*/locations/*}/sites\x12\xb6\x01\n\x07GetSite\x12:.google.cloud.gdchardwaremanagement.v1alpha.GetSiteRequest\x1a\x30.google.cloud.gdchardwaremanagement.v1alpha.Site\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1alpha/{name=projects/*/locations/*/sites/*}\x12\xda\x01\n\nCreateSite\x12=.google.cloud.gdchardwaremanagement.v1alpha.CreateSiteRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41\x19\n\x04Site\x12\x11OperationMetadata\xda\x41\x13parent,site,site_id\x82\xd3\xe4\x93\x02\x36\"./v1alpha/{parent=projects/*/locations/*}/sites:\x04site\x12\xdc\x01\n\nUpdateSite\x12=.google.cloud.gdchardwaremanagement.v1alpha.UpdateSiteRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\x19\n\x04Site\x12\x11OperationMetadata\xda\x41\x10site,update_mask\x82\xd3\xe4\x93\x02;23/v1alpha/{site.name=projects/*/locations/*/sites/*}:\x04site\x12\xd6\x01\n\nDeleteSite\x12=.google.cloud.gdchardwaremanagement.v1alpha.DeleteSiteRequest\x1a\x1d.google.longrunning.Operation\"j\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v1alpha/{name=projects/*/locations/*/sites/*}\x12\xf6\x01\n\x12ListHardwareGroups\x12\x45.google.cloud.gdchardwaremanagement.v1alpha.ListHardwareGroupsRequest\x1a\x46.google.cloud.gdchardwaremanagement.v1alpha.ListHardwareGroupsResponse\"Q\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x42\x12@/v1alpha/{parent=projects/*/locations/*/orders/*}/hardwareGroups\x12\xe3\x01\n\x10GetHardwareGroup\x12\x43.google.cloud.gdchardwaremanagement.v1alpha.GetHardwareGroupRequest\x1a\x39.google.cloud.gdchardwaremanagement.v1alpha.HardwareGroup\"O\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42\x12@/v1alpha/{name=projects/*/locations/*/orders/*/hardwareGroups/*}\x12\xa6\x02\n\x13\x43reateHardwareGroup\x12\x46.google.cloud.gdchardwaremanagement.v1alpha.CreateHardwareGroupRequest\x1a\x1d.google.longrunning.Operation\"\xa7\x01\xca\x41\"\n\rHardwareGroup\x12\x11OperationMetadata\xda\x41\'parent,hardware_group,hardware_group_id\x82\xd3\xe4\x93\x02R\"@/v1alpha/{parent=projects/*/locations/*/orders/*}/hardwareGroups:\x0ehardware_group\x12\xa8\x02\n\x13UpdateHardwareGroup\x12\x46.google.cloud.gdchardwaremanagement.v1alpha.UpdateHardwareGroupRequest\x1a\x1d.google.longrunning.Operation\"\xa9\x01\xca\x41\"\n\rHardwareGroup\x12\x11OperationMetadata\xda\x41\x1ahardware_group,update_mask\x82\xd3\xe4\x93\x02\x61\x32O/v1alpha/{hardware_group.name=projects/*/locations/*/orders/*/hardwareGroups/*}:\x0ehardware_group\x12\xfa\x01\n\x13\x44\x65leteHardwareGroup\x12\x46.google.cloud.gdchardwaremanagement.v1alpha.DeleteHardwareGroupRequest\x1a\x1d.google.longrunning.Operation\"|\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x42*@/v1alpha/{name=projects/*/locations/*/orders/*/hardwareGroups/*}\x12\xd5\x01\n\x0cListHardware\x12?.google.cloud.gdchardwaremanagement.v1alpha.ListHardwareRequest\x1a@.google.cloud.gdchardwaremanagement.v1alpha.ListHardwareResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1alpha/{parent=projects/*/locations/*}/hardware\x12\xc5\x01\n\x0bGetHardware\x12>.google.cloud.gdchardwaremanagement.v1alpha.GetHardwareRequest\x1a\x34.google.cloud.gdchardwaremanagement.v1alpha.Hardware\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1alpha/{name=projects/*/locations/*/hardware/*}\x12\xf6\x01\n\x0e\x43reateHardware\x12\x41.google.cloud.gdchardwaremanagement.v1alpha.CreateHardwareRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1d\n\x08Hardware\x12\x11OperationMetadata\xda\x41\x1bparent,hardware,hardware_id\x82\xd3\xe4\x93\x02=\"1/v1alpha/{parent=projects/*/locations/*}/hardware:\x08hardware\x12\xf8\x01\n\x0eUpdateHardware\x12\x41.google.cloud.gdchardwaremanagement.v1alpha.UpdateHardwareRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\xca\x41\x1d\n\x08Hardware\x12\x11OperationMetadata\xda\x41\x14hardware,update_mask\x82\xd3\xe4\x93\x02\x46\x32:/v1alpha/{hardware.name=projects/*/locations/*/hardware/*}:\x08hardware\x12\xe1\x01\n\x0e\x44\x65leteHardware\x12\x41.google.cloud.gdchardwaremanagement.v1alpha.DeleteHardwareRequest\x1a\x1d.google.longrunning.Operation\"m\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33*1/v1alpha/{name=projects/*/locations/*/hardware/*}\x12\xde\x01\n\x0cListComments\x12?.google.cloud.gdchardwaremanagement.v1alpha.ListCommentsRequest\x1a@.google.cloud.gdchardwaremanagement.v1alpha.ListCommentsResponse\"K\xda\x41\x06parent\x82\xd3\xe4\x93\x02<\x12:/v1alpha/{parent=projects/*/locations/*/orders/*}/comments\x12\xcb\x01\n\nGetComment\x12=.google.cloud.gdchardwaremanagement.v1alpha.GetCommentRequest\x1a\x33.google.cloud.gdchardwaremanagement.v1alpha.Comment\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<\x12:/v1alpha/{name=projects/*/locations/*/orders/*/comments/*}\x12\xf9\x01\n\rCreateComment\x12@.google.cloud.gdchardwaremanagement.v1alpha.CreateCommentRequest\x1a\x1d.google.longrunning.Operation\"\x86\x01\xca\x41\x1c\n\x07\x43omment\x12\x11OperationMetadata\xda\x41\x19parent,comment,comment_id\x82\xd3\xe4\x93\x02\x45\":/v1alpha/{parent=projects/*/locations/*/orders/*}/comments:\x07\x63omment\x12\xfd\x01\n\x15RecordActionOnComment\x12H.google.cloud.gdchardwaremanagement.v1alpha.RecordActionOnCommentRequest\x1a\x33.google.cloud.gdchardwaremanagement.v1alpha.Comment\"e\xda\x41\x10name,action_type\x82\xd3\xe4\x93\x02L\"G/v1alpha/{name=projects/*/locations/*/orders/*/comments/*}:recordAction:\x01*\x12\xfe\x01\n\x14ListChangeLogEntries\x12G.google.cloud.gdchardwaremanagement.v1alpha.ListChangeLogEntriesRequest\x1aH.google.cloud.gdchardwaremanagement.v1alpha.ListChangeLogEntriesResponse\"S\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x44\x12\x42/v1alpha/{parent=projects/*/locations/*/orders/*}/changeLogEntries\x12\xe8\x01\n\x11GetChangeLogEntry\x12\x44.google.cloud.gdchardwaremanagement.v1alpha.GetChangeLogEntryRequest\x1a:.google.cloud.gdchardwaremanagement.v1alpha.ChangeLogEntry\"Q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x44\x12\x42/v1alpha/{name=projects/*/locations/*/orders/*/changeLogEntries/*}\x12\xc5\x01\n\x08ListSkus\x12;.google.cloud.gdchardwaremanagement.v1alpha.ListSkusRequest\x1a<.google.cloud.gdchardwaremanagement.v1alpha.ListSkusResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1alpha/{parent=projects/*/locations/*}/skus\x12\xb2\x01\n\x06GetSku\x12\x39.google.cloud.gdchardwaremanagement.v1alpha.GetSkuRequest\x1a/.google.cloud.gdchardwaremanagement.v1alpha.Sku\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1alpha/{name=projects/*/locations/*/skus/*}\x12\xc9\x01\n\tListZones\x12<.google.cloud.gdchardwaremanagement.v1alpha.ListZonesRequest\x1a=.google.cloud.gdchardwaremanagement.v1alpha.ListZonesResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1alpha/{parent=projects/*/locations/*}/zones\x12\xb6\x01\n\x07GetZone\x12:.google.cloud.gdchardwaremanagement.v1alpha.GetZoneRequest\x1a\x30.google.cloud.gdchardwaremanagement.v1alpha.Zone\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1alpha/{name=projects/*/locations/*/zones/*}\x12\xda\x01\n\nCreateZone\x12=.google.cloud.gdchardwaremanagement.v1alpha.CreateZoneRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41\x19\n\x04Zone\x12\x11OperationMetadata\xda\x41\x13parent,zone,zone_id\x82\xd3\xe4\x93\x02\x36\"./v1alpha/{parent=projects/*/locations/*}/zones:\x04zone\x12\xdc\x01\n\nUpdateZone\x12=.google.cloud.gdchardwaremanagement.v1alpha.UpdateZoneRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\x19\n\x04Zone\x12\x11OperationMetadata\xda\x41\x10zone,update_mask\x82\xd3\xe4\x93\x02;23/v1alpha/{zone.name=projects/*/locations/*/zones/*}:\x04zone\x12\xd6\x01\n\nDeleteZone\x12=.google.cloud.gdchardwaremanagement.v1alpha.DeleteZoneRequest\x1a\x1d.google.longrunning.Operation\"j\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30*./v1alpha/{name=projects/*/locations/*/zones/*}\x12\xe6\x01\n\x0fSignalZoneState\x12\x42.google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41\x19\n\x04Zone\x12\x11OperationMetadata\xda\x41\x11name,state_signal\x82\xd3\xe4\x93\x02:\"5/v1alpha/{name=projects/*/locations/*/zones/*}:signal:\x01*\x1aX\xca\x41$gdchardwaremanagement.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xb0\x02\n.com.google.cloud.gdchardwaremanagement.v1alphaB\x0cServiceProtoP\x01Zdcloud.google.com/go/gdchardwaremanagement/apiv1alpha/gdchardwaremanagementpb;gdchardwaremanagementpb\xaa\x02*Google.Cloud.GdcHardwareManagement.V1Alpha\xca\x02*Google\\Cloud\\GdcHardwareManagement\\V1alpha\xea\x02-Google::Cloud::GDCHardwareManagement::V1alphab\x06proto3"

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
    ["google.cloud.gdchardwaremanagement.v1alpha.Order", "google/cloud/gdchardwaremanagement/v1alpha/resources.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
        ListOrdersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListOrdersRequest").msgclass
        ListOrdersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListOrdersResponse").msgclass
        GetOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetOrderRequest").msgclass
        CreateOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateOrderRequest").msgclass
        UpdateOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.UpdateOrderRequest").msgclass
        DeleteOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.DeleteOrderRequest").msgclass
        SubmitOrderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SubmitOrderRequest").msgclass
        SubmitOrderRequest::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SubmitOrderRequest.Type").enummodule
        ListSitesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListSitesRequest").msgclass
        ListSitesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListSitesResponse").msgclass
        GetSiteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetSiteRequest").msgclass
        CreateSiteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateSiteRequest").msgclass
        UpdateSiteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.UpdateSiteRequest").msgclass
        DeleteSiteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.DeleteSiteRequest").msgclass
        ListHardwareGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListHardwareGroupsRequest").msgclass
        ListHardwareGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListHardwareGroupsResponse").msgclass
        GetHardwareGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetHardwareGroupRequest").msgclass
        CreateHardwareGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateHardwareGroupRequest").msgclass
        UpdateHardwareGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.UpdateHardwareGroupRequest").msgclass
        DeleteHardwareGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.DeleteHardwareGroupRequest").msgclass
        ListHardwareRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListHardwareRequest").msgclass
        ListHardwareResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListHardwareResponse").msgclass
        GetHardwareRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetHardwareRequest").msgclass
        CreateHardwareRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateHardwareRequest").msgclass
        UpdateHardwareRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.UpdateHardwareRequest").msgclass
        DeleteHardwareRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.DeleteHardwareRequest").msgclass
        ListCommentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListCommentsRequest").msgclass
        ListCommentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListCommentsResponse").msgclass
        GetCommentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetCommentRequest").msgclass
        CreateCommentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateCommentRequest").msgclass
        RecordActionOnCommentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.RecordActionOnCommentRequest").msgclass
        RecordActionOnCommentRequest::ActionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.RecordActionOnCommentRequest.ActionType").enummodule
        ListChangeLogEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListChangeLogEntriesRequest").msgclass
        ListChangeLogEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListChangeLogEntriesResponse").msgclass
        GetChangeLogEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetChangeLogEntryRequest").msgclass
        ListSkusRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListSkusRequest").msgclass
        ListSkusResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListSkusResponse").msgclass
        GetSkuRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetSkuRequest").msgclass
        ListZonesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListZonesRequest").msgclass
        ListZonesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.ListZonesResponse").msgclass
        GetZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.GetZoneRequest").msgclass
        CreateZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.CreateZoneRequest").msgclass
        UpdateZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.UpdateZoneRequest").msgclass
        DeleteZoneRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.DeleteZoneRequest").msgclass
        SignalZoneStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest").msgclass
        SignalZoneStateRequest::StateSignal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest.StateSignal").enummodule
        SignalZoneStateRequest::ProvisioningStateSignal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.SignalZoneStateRequest.ProvisioningStateSignal").enummodule
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gdchardwaremanagement.v1alpha.OperationMetadata").msgclass
      end
    end
  end
end
