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


module Google
  module Cloud
    module PolicySimulator
      module V1
        # OrgPolicyViolationsPreview is a resource providing a preview of the
        # violations that will exist if an OrgPolicy change is made.
        #
        # The list of violations are modeled as child resources and retrieved via a
        # [ListOrgPolicyViolations][] API call. There are potentially more
        # [OrgPolicyViolations][] than could fit in an embedded field. Thus, the use of
        # a child resource instead of a field.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the `OrgPolicyViolationsPreview`. It has
        #     the following format:
        #
        #     `organizations/{organization}/locations/{location}/orgPolicyViolationsPreviews/{orgPolicyViolationsPreview}`
        #
        #     Example:
        #     `organizations/my-example-org/locations/global/orgPolicyViolationsPreviews/506a5f7f`
        # @!attribute [r] state
        #   @return [::Google::Cloud::PolicySimulator::V1::PreviewState]
        #     Output only. The state of the `OrgPolicyViolationsPreview`.
        # @!attribute [rw] overlay
        #   @return [::Google::Cloud::PolicySimulator::V1::OrgPolicyOverlay]
        #     Required. The proposed changes we are previewing violations for.
        # @!attribute [r] violations_count
        #   @return [::Integer]
        #     Output only. The number of [OrgPolicyViolations][] in this
        #     `OrgPolicyViolationsPreview`. This count may differ from
        #     `resource_summary.noncompliant_count` because each
        #     {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolation OrgPolicyViolation} is
        #     specific to a resource **and** constraint. If there are multiple
        #     constraints being evaluated (i.e. multiple policies in the overlay), a
        #     single resource may violate multiple constraints.
        # @!attribute [r] resource_counts
        #   @return [::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview::ResourceCounts]
        #     Output only. A summary of the state of all resources scanned for compliance
        #     with the changed OrgPolicy.
        # @!attribute [r] custom_constraints
        #   @return [::Array<::String>]
        #     Output only. The names of the constraints against which all
        #     `OrgPolicyViolations` were evaluated.
        #
        #     If `OrgPolicyOverlay` only contains `PolicyOverlay` then it contains
        #     the name of the configured custom constraint, applicable to the specified
        #     policies. Otherwise it contains the name of the constraint specified in
        #     `CustomConstraintOverlay`.
        #
        #     Format:
        #     `organizations/{organization_id}/customConstraints/{custom_constraint_id}`
        #
        #     Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when this `OrgPolicyViolationsPreview` was created.
        class OrgPolicyViolationsPreview
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A summary of the state of all resources scanned for compliance with the
          # changed OrgPolicy.
          # @!attribute [r] scanned
          #   @return [::Integer]
          #     Output only. Number of resources checked for compliance.
          #
          #     Must equal:  unenforced + noncompliant + compliant + error
          # @!attribute [r] noncompliant
          #   @return [::Integer]
          #     Output only. Number of scanned resources with at least one violation.
          # @!attribute [r] compliant
          #   @return [::Integer]
          #     Output only. Number of scanned resources with zero violations.
          # @!attribute [r] unenforced
          #   @return [::Integer]
          #     Output only. Number of resources where the constraint was not enforced,
          #     i.e. the Policy set `enforced: false` for that resource.
          # @!attribute [r] errors
          #   @return [::Integer]
          #     Output only. Number of resources that returned an error when scanned.
          class ResourceCounts
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # OrgPolicyViolation is a resource representing a single resource violating a
        # single OrgPolicy constraint.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the `OrgPolicyViolation`. Example:
        #     organizations/my-example-org/locations/global/orgPolicyViolationsPreviews/506a5f7f/orgPolicyViolations/38ce`
        # @!attribute [rw] resource
        #   @return [::Google::Cloud::PolicySimulator::V1::ResourceContext]
        #     The resource violating the constraint.
        # @!attribute [rw] custom_constraint
        #   @return [::Google::Cloud::OrgPolicy::V2::CustomConstraint]
        #     The custom constraint being violated.
        # @!attribute [rw] error
        #   @return [::Google::Rpc::Status]
        #     Any error encountered during the evaluation.
        class OrgPolicyViolation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ResourceContext provides the context we know about a resource.
        # It is similar in concept to google.cloud.asset.v1.Resource, but focuses
        # on the information specifically used by Simulator.
        # @!attribute [rw] resource
        #   @return [::String]
        #     The full name of the resource. Example:
        #     `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`
        #
        #     See [Resource
        #     names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
        #     for more information.
        # @!attribute [rw] asset_type
        #   @return [::String]
        #     The asset type of the resource as defined by CAIS.
        #
        #     Example: `compute.googleapis.com/Firewall`
        #
        #     See [Supported asset
        #     types](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
        #     for more information.
        # @!attribute [rw] ancestors
        #   @return [::Array<::String>]
        #     The ancestry path of the resource in Google Cloud [resource
        #     hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy),
        #     represented as a list of relative resource names. An ancestry path starts
        #     with the closest ancestor in the hierarchy and ends at root. If the
        #     resource is a project, folder, or organization, the ancestry path starts
        #     from the resource itself.
        #
        #     Example: `["projects/123456789", "folders/5432", "organizations/1234"]`
        class ResourceContext
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The proposed changes to OrgPolicy.
        # @!attribute [rw] policies
        #   @return [::Array<::Google::Cloud::PolicySimulator::V1::OrgPolicyOverlay::PolicyOverlay>]
        #     Optional. The OrgPolicy changes to preview violations for.
        #
        #     Any existing OrgPolicies with the same name will be overridden
        #     in the simulation. That is, violations will be determined as if all
        #     policies in the overlay were created or updated.
        # @!attribute [rw] custom_constraints
        #   @return [::Array<::Google::Cloud::PolicySimulator::V1::OrgPolicyOverlay::CustomConstraintOverlay>]
        #     Optional. The OrgPolicy CustomConstraint changes to preview violations for.
        #
        #     Any existing CustomConstraints with the same name will be overridden
        #     in the simulation. That is, violations will be determined as if all
        #     custom constraints in the overlay were instantiated.
        #
        #     Only a single custom_constraint is supported in the overlay at a time.
        #     For evaluating multiple constraints, multiple
        #     `GenerateOrgPolicyViolationsPreview` requests are made, where each request
        #     evaluates a single constraint.
        class OrgPolicyOverlay
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A change to an OrgPolicy.
          # @!attribute [rw] policy_parent
          #   @return [::String]
          #     Optional. The parent of the policy we are attaching to.
          #     Example: "projects/123456"
          # @!attribute [rw] policy
          #   @return [::Google::Cloud::OrgPolicy::V2::Policy]
          #     Optional. The new or updated OrgPolicy.
          class PolicyOverlay
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A change to an OrgPolicy custom constraint.
          # @!attribute [rw] custom_constraint_parent
          #   @return [::String]
          #     Optional. Resource the constraint is attached to.
          #     Example: "organization/987654"
          # @!attribute [rw] custom_constraint
          #   @return [::Google::Cloud::OrgPolicy::V2::CustomConstraint]
          #     Optional. The new or updated custom constraint.
          class CustomConstraintOverlay
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # CreateOrgPolicyViolationsPreviewOperationMetadata is metadata about an
        # OrgPolicyViolationsPreview generations operation.
        # @!attribute [rw] request_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the request was received.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the request started processing, i.e., when the state was set to
        #     RUNNING.
        # @!attribute [r] state
        #   @return [::Google::Cloud::PolicySimulator::V1::PreviewState]
        #     Output only. The current state of the operation.
        # @!attribute [rw] resources_found
        #   @return [::Integer]
        #     Total number of resources that need scanning.
        #     Should equal resource_scanned + resources_pending
        # @!attribute [rw] resources_scanned
        #   @return [::Integer]
        #     Number of resources already scanned.
        # @!attribute [rw] resources_pending
        #   @return [::Integer]
        #     Number of resources still to scan.
        class CreateOrgPolicyViolationsPreviewOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListOrgPolicyViolationsPreviewsRequest is the request message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#list_org_policy_violations_previews OrgPolicyViolationsPreviewService.ListOrgPolicyViolationsPreviews}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent the violations are scoped to.
        #     Format:
        #     `organizations/{organization}/locations/{location}`
        #
        #     Example: `organizations/my-example-org/locations/global`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return. The service may return
        #     fewer than this value. If unspecified, at most 5 items will be returned.
        #     The maximum value is 10; values above 10 will be coerced to 10.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous call. Provide this to
        #     retrieve the subsequent page.
        #
        #     When paginating, all other parameters must match the call that provided the
        #     page token.
        class ListOrgPolicyViolationsPreviewsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListOrgPolicyViolationsPreviewsResponse is the response message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#list_org_policy_violations_previews OrgPolicyViolationsPreviewService.ListOrgPolicyViolationsPreviews}.
        # @!attribute [rw] org_policy_violations_previews
        #   @return [::Array<::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview>]
        #     The list of OrgPolicyViolationsPreview
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that you can use to retrieve the next page of results.
        #     If this field is omitted, there are no subsequent pages.
        class ListOrgPolicyViolationsPreviewsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetOrgPolicyViolationsPreviewRequest is the request message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#get_org_policy_violations_preview OrgPolicyViolationsPreviewService.GetOrgPolicyViolationsPreview}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the OrgPolicyViolationsPreview to get.
        class GetOrgPolicyViolationsPreviewRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateOrgPolicyViolationsPreviewRequest is the request message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#create_org_policy_violations_preview OrgPolicyViolationsPreviewService.CreateOrgPolicyViolationsPreview}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The organization under which this
        #     {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
        #     will be created.
        #
        #     Example: `organizations/my-example-org/locations/global`
        # @!attribute [rw] org_policy_violations_preview
        #   @return [::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview]
        #     Required. The
        #     {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
        #     to generate.
        # @!attribute [rw] org_policy_violations_preview_id
        #   @return [::String]
        #     Optional. An optional user-specified ID for the
        #     {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}.
        #     If not provided, a random ID will be generated.
        class CreateOrgPolicyViolationsPreviewRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListOrgPolicyViolationsRequest is the request message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#list_org_policy_violations OrgPolicyViolationsPreviewService.ListOrgPolicyViolations}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The OrgPolicyViolationsPreview to get OrgPolicyViolations from.
        #     Format:
        #     organizations/\\{organization}/locations/\\{location}/orgPolicyViolationsPreviews/\\{orgPolicyViolationsPreview}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return. The service may return
        #     fewer than this value. If unspecified, at most 1000 items will be returned.
        #     The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous call. Provide this to
        #     retrieve the subsequent page.
        #
        #     When paginating, all other parameters must match the call that provided the
        #     page token.
        class ListOrgPolicyViolationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListOrgPolicyViolationsResponse is the response message for
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreviewService::Client#list_org_policy_violations OrgPolicyViolationsPreviewService.ListOrgPolicyViolations}
        # @!attribute [rw] org_policy_violations
        #   @return [::Array<::Google::Cloud::PolicySimulator::V1::OrgPolicyViolation>]
        #     The list of OrgPolicyViolations
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that you can use to retrieve the next page of results.
        #     If this field is omitted, there are no subsequent pages.
        class ListOrgPolicyViolationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The current state of an
        # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}.
        module PreviewState
          # The state is unspecified.
          PREVIEW_STATE_UNSPECIFIED = 0

          # The
          # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
          # has not been created yet.
          PREVIEW_PENDING = 1

          # The
          # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
          # is currently being created.
          PREVIEW_RUNNING = 2

          # The
          # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
          # creation finished successfully.
          PREVIEW_SUCCEEDED = 3

          # The
          # {::Google::Cloud::PolicySimulator::V1::OrgPolicyViolationsPreview OrgPolicyViolationsPreview}
          # creation failed with an error.
          PREVIEW_FAILED = 4
        end
      end
    end
  end
end
