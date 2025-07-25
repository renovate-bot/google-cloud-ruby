# frozen_string_literal: true

# Copyright 2025 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/policy_simulator/v1/version"

require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/credentials"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/paths"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/operations"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/client"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/rest"

module Google
  module Cloud
    module PolicySimulator
      module V1
        ##
        # Violations Preview API service for OrgPolicy.
        #
        # An
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
        # is a preview of the violations that will exist as soon as a proposed
        # OrgPolicy change is submitted. To create an
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview},
        # the API user specifies the changes they wish to make and requests the
        # generation of a preview via [GenerateViolationsPreview][]. the OrgPolicy
        # Simulator service then scans the API user's currently existing resources to
        # determine these resources violate the newly set OrgPolicy.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service"
        #     client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/rest"
        #     client = ::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Rest::Client.new
        #
        module OrgPolicyViolationsPreviewService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "org_policy_violations_preview_service", "helpers.rb"
require "google/cloud/policy_simulator/v1/org_policy_violations_preview_service/helpers" if ::File.file? helper_path
