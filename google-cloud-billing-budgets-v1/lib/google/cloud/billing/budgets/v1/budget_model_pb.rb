# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/billing/budgets/v1/budget_model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/type/date_pb'
require 'google/type/money_pb'


descriptor_data = "\n2google/cloud/billing/budgets/v1/budget_model.proto\x12\x1fgoogle.cloud.billing.budgets.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x16google/type/date.proto\x1a\x17google/type/money.proto\"\xd5\x03\n\x06\x42udget\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x44\n\rbudget_filter\x18\x03 \x01(\x0b\x32\'.google.cloud.billing.budgets.v1.FilterB\x04\xe2\x41\x01\x01\x12\x43\n\x06\x61mount\x18\x04 \x01(\x0b\x32-.google.cloud.billing.budgets.v1.BudgetAmountB\x04\xe2\x41\x01\x02\x12M\n\x0fthreshold_rules\x18\x05 \x03(\x0b\x32..google.cloud.billing.budgets.v1.ThresholdRuleB\x04\xe2\x41\x01\x01\x12T\n\x12notifications_rule\x18\x06 \x01(\x0b\x32\x32.google.cloud.billing.budgets.v1.NotificationsRuleB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x07 \x01(\tB\x04\xe2\x41\x01\x01:]\xea\x41Z\n$billingbudgets.googleapis.com/Budget\x12\x32\x62illingAccounts/{billing_account}/budgets/{budget}\"\xa0\x01\n\x0c\x42udgetAmount\x12.\n\x10specified_amount\x18\x01 \x01(\x0b\x32\x12.google.type.MoneyH\x00\x12O\n\x12last_period_amount\x18\x02 \x01(\x0b\x32\x31.google.cloud.billing.budgets.v1.LastPeriodAmountH\x00\x42\x0f\n\rbudget_amount\"\x12\n\x10LastPeriodAmount\"\xca\x01\n\rThresholdRule\x12\x1f\n\x11threshold_percent\x18\x01 \x01(\x01\x42\x04\xe2\x41\x01\x02\x12O\n\x0bspend_basis\x18\x02 \x01(\x0e\x32\x34.google.cloud.billing.budgets.v1.ThresholdRule.BasisB\x04\xe2\x41\x01\x01\"G\n\x05\x42\x61sis\x12\x15\n\x11\x42\x41SIS_UNSPECIFIED\x10\x00\x12\x11\n\rCURRENT_SPEND\x10\x01\x12\x14\n\x10\x46ORECASTED_SPEND\x10\x02\"\xda\x01\n\x11NotificationsRule\x12\x1a\n\x0cpubsub_topic\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1c\n\x0eschema_version\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12.\n monitoring_notification_channels\x18\x03 \x03(\tB\x04\xe2\x41\x01\x01\x12,\n\x1e\x64isable_default_iam_recipients\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12-\n\x1f\x65nable_project_level_recipients\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xcd\x05\n\x06\x46ilter\x12\x16\n\x08projects\x18\x01 \x03(\tB\x04\xe2\x41\x01\x01\x12 \n\x12resource_ancestors\x18\x02 \x03(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x63redit_types\x18\x07 \x03(\tB\x04\xe2\x41\x01\x01\x12\x62\n\x16\x63redit_types_treatment\x18\x04 \x01(\x0e\x32<.google.cloud.billing.budgets.v1.Filter.CreditTypesTreatmentB\x04\xe2\x41\x01\x01\x12\x16\n\x08services\x18\x03 \x03(\tB\x04\xe2\x41\x01\x01\x12\x19\n\x0bsubaccounts\x18\x05 \x03(\tB\x04\xe2\x41\x01\x01\x12I\n\x06labels\x18\x06 \x03(\x0b\x32\x33.google.cloud.billing.budgets.v1.Filter.LabelsEntryB\x04\xe2\x41\x01\x01\x12P\n\x0f\x63\x61lendar_period\x18\x08 \x01(\x0e\x32/.google.cloud.billing.budgets.v1.CalendarPeriodB\x04\xe2\x41\x01\x01H\x00\x12L\n\rcustom_period\x18\t \x01(\x0b\x32-.google.cloud.billing.budgets.v1.CustomPeriodB\x04\xe2\x41\x01\x01H\x00\x1aI\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12)\n\x05value\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.ListValue:\x02\x38\x01\"\x8f\x01\n\x14\x43reditTypesTreatment\x12&\n\"CREDIT_TYPES_TREATMENT_UNSPECIFIED\x10\x00\x12\x17\n\x13INCLUDE_ALL_CREDITS\x10\x01\x12\x17\n\x13\x45XCLUDE_ALL_CREDITS\x10\x02\x12\x1d\n\x19INCLUDE_SPECIFIED_CREDITS\x10\x03\x42\x0e\n\x0cusage_period\"f\n\x0c\x43ustomPeriod\x12+\n\nstart_date\x18\x01 \x01(\x0b\x32\x11.google.type.DateB\x04\xe2\x41\x01\x02\x12)\n\x08\x65nd_date\x18\x02 \x01(\x0b\x32\x11.google.type.DateB\x04\xe2\x41\x01\x01*S\n\x0e\x43\x61lendarPeriod\x12\x1f\n\x1b\x43\x41LENDAR_PERIOD_UNSPECIFIED\x10\x00\x12\t\n\x05MONTH\x10\x01\x12\x0b\n\x07QUARTER\x10\x02\x12\x08\n\x04YEAR\x10\x03\x42x\n#com.google.cloud.billing.budgets.v1B\x10\x42udgetModelProtoP\x01Z=cloud.google.com/go/billing/budgets/apiv1/budgetspb;budgetspbb\x06proto3"

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
    ["google.type.Money", "google/type/money.proto"],
    ["google.protobuf.ListValue", "google/protobuf/struct.proto"],
    ["google.type.Date", "google/type/date.proto"],
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
    module Billing
      module Budgets
        module V1
          Budget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.Budget").msgclass
          BudgetAmount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.BudgetAmount").msgclass
          LastPeriodAmount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.LastPeriodAmount").msgclass
          ThresholdRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.ThresholdRule").msgclass
          ThresholdRule::Basis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.ThresholdRule.Basis").enummodule
          NotificationsRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.NotificationsRule").msgclass
          Filter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.Filter").msgclass
          Filter::CreditTypesTreatment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.Filter.CreditTypesTreatment").enummodule
          CustomPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.CustomPeriod").msgclass
          CalendarPeriod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.billing.budgets.v1.CalendarPeriod").enummodule
        end
      end
    end
  end
end
