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
  module Cloud
    module NetworkConnectivity
      module V1
        # Policy-based routes route L4 network traffic based on not just destination IP
        # address, but also source IP address, protocol, and more. If a policy-based
        # route conflicts with other types of routes, the policy-based route always
        # takes precedence.
        # @!attribute [rw] virtual_machine
        #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::VirtualMachine]
        #     Optional. VM instances that this policy-based route applies to.
        #
        #     Note: The following fields are mutually exclusive: `virtual_machine`, `interconnect_attachment`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] interconnect_attachment
        #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::InterconnectAttachment]
        #     Optional. The interconnect attachments that this policy-based route
        #     applies to.
        #
        #     Note: The following fields are mutually exclusive: `interconnect_attachment`, `virtual_machine`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] next_hop_ilb_ip
        #   @return [::String]
        #     Optional. The IP address of a global-access-enabled L4 ILB that is the
        #     next hop for matching packets. For this version, only nextHopIlbIp is
        #     supported.
        #
        #     Note: The following fields are mutually exclusive: `next_hop_ilb_ip`, `next_hop_other_routes`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] next_hop_other_routes
        #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::OtherRoutes]
        #     Optional. Other routes that will be referenced to determine the next hop
        #     of the packet.
        #
        #     Note: The following fields are mutually exclusive: `next_hop_other_routes`, `next_hop_ilb_ip`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. A unique name of the resource in the form of
        #     `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the policy-based route was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the policy-based route was updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     User-defined labels.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. An optional description of this resource. Provide this field when
        #     you create the resource.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. Fully-qualified URL of the network that this route applies to,
        #     for example: projects/my-project/global/networks/my-network.
        # @!attribute [rw] filter
        #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::Filter]
        #     Required. The filter to match L4 traffic.
        # @!attribute [rw] priority
        #   @return [::Integer]
        #     Optional. The priority of this policy-based route. Priority is used to
        #     break ties in cases where there are more than one matching policy-based
        #     routes found. In cases where multiple policy-based routes are matched, the
        #     one with the lowest-numbered priority value wins. The default value is
        #     1000. The priority value must be from 1 to 65535, inclusive.
        # @!attribute [r] warnings
        #   @return [::Array<::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::Warnings>]
        #     Output only. If potential misconfigurations are detected for this route,
        #     this field will be populated with warning messages.
        # @!attribute [r] self_link
        #   @return [::String]
        #     Output only. Server-defined fully-qualified URL for this resource.
        # @!attribute [r] kind
        #   @return [::String]
        #     Output only. Type of this resource. Always
        #     networkconnectivity#policyBasedRoute for policy-based Route resources.
        class PolicyBasedRoute
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # VM instances that this policy-based route applies to.
          # @!attribute [rw] tags
          #   @return [::Array<::String>]
          #     Optional. A list of VM instance tags that this policy-based route applies
          #     to. VM instances that have ANY of tags specified here installs this PBR.
          class VirtualMachine
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # InterconnectAttachment that this route applies to.
          # @!attribute [rw] region
          #   @return [::String]
          #     Optional. Cloud region to install this policy-based route on interconnect
          #     attachment. Use `all` to install it on all interconnect attachments.
          class InterconnectAttachment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Filter matches L4 traffic.
          # @!attribute [rw] ip_protocol
          #   @return [::String]
          #     Optional. The IP protocol that this policy-based route applies to. Valid
          #     values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
          # @!attribute [rw] src_range
          #   @return [::String]
          #     Optional. The source IP range of outgoing packets that this policy-based
          #     route applies to. Default is "0.0.0.0/0" if protocol version is IPv4.
          # @!attribute [rw] dest_range
          #   @return [::String]
          #     Optional. The destination IP range of outgoing packets that this
          #     policy-based route applies to. Default is "0.0.0.0/0" if protocol version
          #     is IPv4.
          # @!attribute [rw] protocol_version
          #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::Filter::ProtocolVersion]
          #     Required. Internet protocol versions this policy-based route applies to.
          #     For this version, only IPV4 is supported. IPV6 is supported in preview.
          class Filter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The internet protocol version.
            module ProtocolVersion
              # Default value.
              PROTOCOL_VERSION_UNSPECIFIED = 0

              # The PBR is for IPv4 internet protocol traffic.
              IPV4 = 1
            end
          end

          # Informational warning message.
          # @!attribute [r] code
          #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute::Warnings::Code]
          #     Output only. A warning code, if applicable.
          # @!attribute [r] data
          #   @return [::Google::Protobuf::Map{::String => ::String}]
          #     Output only. Metadata about this warning in key: value format. The key
          #     should provides more detail on the warning being returned. For example,
          #     for warnings where there are no results in a list request for a
          #     particular zone, this key might be scope and the key value might be the
          #     zone name. Other examples might be a key indicating a deprecated resource
          #     and a suggested replacement.
          # @!attribute [r] warning_message
          #   @return [::String]
          #     Output only. A human-readable description of the warning code.
          class Warnings
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::String]
            class DataEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Warning code for policy-based routing. Expect to add values in the
            # future.
            module Code
              # Default value.
              WARNING_UNSPECIFIED = 0

              # The policy-based route is not active and functioning. Common causes are
              # that the dependent network was deleted or the resource project was
              # turned off.
              RESOURCE_NOT_ACTIVE = 1

              # The policy-based route is being modified (e.g. created/deleted) at this
              # time.
              RESOURCE_BEING_MODIFIED = 2
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The other routing cases.
          module OtherRoutes
            # Default value.
            OTHER_ROUTES_UNSPECIFIED = 0

            # Use the routes from the default routing tables (system-generated routes,
            # custom routes, peering route) to determine the next hop. This effectively
            # excludes matching packets being applied on other PBRs with a lower
            # priority.
            DEFAULT_ROUTING = 1
          end
        end

        # Request for
        # {::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client#list_policy_based_routes PolicyBasedRoutingService.ListPolicyBasedRoutes}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource's name.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of results per page that should be returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter expression that filters the results listed in the response.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort the results by a certain order.
        class ListPolicyBasedRoutesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for
        # {::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client#list_policy_based_routes PolicyBasedRoutingService.ListPolicyBasedRoutes}
        # method.
        # @!attribute [rw] policy_based_routes
        #   @return [::Array<::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute>]
        #     Policy-based routes to be returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The next pagination token in the List response. It should be used as
        #     page_token for the following request. An empty value means no more result.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListPolicyBasedRoutesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client#get_policy_based_route PolicyBasedRoutingService.GetPolicyBasedRoute}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the PolicyBasedRoute resource to get.
        class GetPolicyBasedRouteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client#create_policy_based_route PolicyBasedRoutingService.CreatePolicyBasedRoute}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource's name of the PolicyBasedRoute.
        # @!attribute [rw] policy_based_route_id
        #   @return [::String]
        #     Required. Unique id for the policy-based route to create. Provided by the
        #     client when the resource is created. The name must comply with
        #     https://google.aip.dev/122#resource-id-segments. Specifically, the name
        #     must be 1-63 characters long and match the regular expression
        #     [a-z]([a-z0-9-]*[a-z0-9])?. The first character must be a lowercase letter,
        #     and all following characters (except for the last character) must be a
        #     dash, lowercase letter, or digit. The last character must be a lowercase
        #     letter or digit.
        # @!attribute [rw] policy_based_route
        #   @return [::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoute]
        #     Required. Initial values for a new policy-based route.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server knows to
        #     ignore the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents clients
        #     from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreatePolicyBasedRouteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::NetworkConnectivity::V1::PolicyBasedRoutingService::Client#delete_policy_based_route PolicyBasedRoutingService.DeletePolicyBasedRoute}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the policy-based route resource to delete.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server knows to
        #     ignore the request if it has already been completed. The server guarantees
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, ignores the second request. This prevents clients
        #     from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeletePolicyBasedRouteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
