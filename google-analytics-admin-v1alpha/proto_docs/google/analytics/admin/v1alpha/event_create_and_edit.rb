# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Analytics
    module Admin
      module V1alpha
        # Defines an event parameter to mutate.
        # @!attribute [rw] parameter
        #   @return [::String]
        #     Required. The name of the parameter to mutate.
        #     This value must:
        #     * be less than 40 characters.
        #     * be unique across across all mutations within the rule
        #     * consist only of letters, digits or _ (underscores)
        #     For event edit rules, the name may also be set to 'event_name' to modify
        #     the event_name in place.
        # @!attribute [rw] parameter_value
        #   @return [::String]
        #     Required. The value mutation to perform.
        #     * Must be less than 100 characters.
        #     * To specify a constant value for the param, use the value's string.
        #     * To copy value from another parameter, use syntax like
        #     "[[other_parameter]]" For more details, see this [help center
        #     article](https://support.google.com/analytics/answer/10085872#modify-an-event&zippy=%2Cin-this-article%2Cmodify-parameters).
        class ParameterMutation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Event Create Rule defines conditions that will trigger the creation
        # of an entirely new event based upon matched criteria of a source event.
        # Additional mutations of the parameters from the source event can be defined.
        #
        # Unlike Event Edit rules, Event Creation Rules have no defined order.  They
        # will all be run independently.
        #
        # Event Edit and Event Create rules can't be used to modify an event created
        # from an Event Create rule.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name for this EventCreateRule resource.
        #     Format:
        #     properties/\\{property}/dataStreams/\\{data_stream}/eventCreateRules/\\{event_create_rule}
        # @!attribute [rw] destination_event
        #   @return [::String]
        #     Required. The name of the new event to be created.
        #
        #     This value must:
        #     * be less than 40 characters
        #     * consist only of letters, digits or _ (underscores)
        #     * start with a letter
        # @!attribute [rw] event_conditions
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::MatchingCondition>]
        #     Required. Must have at least one condition, and can have up to 10 max.
        #     Conditions on the source event must match for this rule to be applied.
        # @!attribute [rw] source_copy_parameters
        #   @return [::Boolean]
        #     If true, the source parameters are copied to the new event.
        #     If false, or unset, all non-internal parameters are not copied from the
        #     source event. Parameter mutations are applied after the parameters have
        #     been copied.
        # @!attribute [rw] parameter_mutations
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::ParameterMutation>]
        #     Parameter mutations define parameter behavior on the new event, and
        #     are applied in order.
        #     A maximum of 20 mutations can be applied.
        class EventCreateRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defines a condition for when an Event Edit or Event Creation rule applies to
        # an event.
        # @!attribute [rw] field
        #   @return [::String]
        #     Required. The name of the field that is compared against for the condition.
        #     If 'event_name' is specified this condition will apply to the name of the
        #     event.  Otherwise the condition will apply to a parameter with the
        #     specified name.
        #
        #     This value cannot contain spaces.
        # @!attribute [rw] comparison_type
        #   @return [::Google::Analytics::Admin::V1alpha::MatchingCondition::ComparisonType]
        #     Required. The type of comparison to be applied to the value.
        # @!attribute [rw] value
        #   @return [::String]
        #     Required. The value being compared against for this condition.  The runtime
        #     implementation may perform type coercion of this value to evaluate this
        #     condition based on the type of the parameter value.
        # @!attribute [rw] negated
        #   @return [::Boolean]
        #     Whether or not the result of the comparison should be negated. For example,
        #     if `negated` is true, then 'equals' comparisons would function as 'not
        #     equals'.
        class MatchingCondition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Comparison type for matching condition
          module ComparisonType
            # Unknown
            COMPARISON_TYPE_UNSPECIFIED = 0

            # Equals, case sensitive
            EQUALS = 1

            # Equals, case insensitive
            EQUALS_CASE_INSENSITIVE = 2

            # Contains, case sensitive
            CONTAINS = 3

            # Contains, case insensitive
            CONTAINS_CASE_INSENSITIVE = 4

            # Starts with, case sensitive
            STARTS_WITH = 5

            # Starts with, case insensitive
            STARTS_WITH_CASE_INSENSITIVE = 6

            # Ends with, case sensitive
            ENDS_WITH = 7

            # Ends with, case insensitive
            ENDS_WITH_CASE_INSENSITIVE = 8

            # Greater than
            GREATER_THAN = 9

            # Greater than or equal
            GREATER_THAN_OR_EQUAL = 10

            # Less than
            LESS_THAN = 11

            # Less than or equal
            LESS_THAN_OR_EQUAL = 12

            # regular expression. Only supported for web streams.
            REGULAR_EXPRESSION = 13

            # regular expression, case insensitive. Only supported for web streams.
            REGULAR_EXPRESSION_CASE_INSENSITIVE = 14
          end
        end
      end
    end
  end
end
