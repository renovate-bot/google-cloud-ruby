# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/maps/fleetengine/delivery/v1/delivery_api.proto for package 'Google.Maps.FleetEngine.Delivery.V1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/maps/fleetengine/delivery/v1/delivery_api_pb'

module Google
  module Maps
    module FleetEngine
      module Delivery
        module V1
          module DeliveryService
            # The Last Mile Delivery service.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'maps.fleetengine.delivery.v1.DeliveryService'

              # Creates and returns a new `DeliveryVehicle`.
              rpc :CreateDeliveryVehicle, ::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest, ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle
              # Returns the specified `DeliveryVehicle` instance.
              rpc :GetDeliveryVehicle, ::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest, ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle
              # Deletes a DeliveryVehicle from the Fleet Engine.
              #
              # Returns FAILED_PRECONDITION if the DeliveryVehicle has OPEN Tasks
              # assigned to it.
              rpc :DeleteDeliveryVehicle, ::Google::Maps::FleetEngine::Delivery::V1::DeleteDeliveryVehicleRequest, ::Google::Protobuf::Empty
              # Writes updated `DeliveryVehicle` data to Fleet Engine, and assigns
              # `Tasks` to the `DeliveryVehicle`. You cannot update the name of the
              # `DeliveryVehicle`. You *can* update `remaining_vehicle_journey_segments`,
              # but it must contain all of the `VehicleJourneySegment`s to be persisted on
              # the `DeliveryVehicle`. The `task_id`s are retrieved from
              # `remaining_vehicle_journey_segments`, and their corresponding `Tasks` are
              # assigned to the `DeliveryVehicle` if they have not yet been assigned.
              rpc :UpdateDeliveryVehicle, ::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest, ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle
              # Creates and returns a batch of new `Task` objects.
              rpc :BatchCreateTasks, ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest, ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksResponse
              # Creates and returns a new `Task` object.
              rpc :CreateTask, ::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest, ::Google::Maps::FleetEngine::Delivery::V1::Task
              # Gets information about a `Task`.
              rpc :GetTask, ::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest, ::Google::Maps::FleetEngine::Delivery::V1::Task
              # Deletes a single Task.
              #
              # Returns FAILED_PRECONDITION if the Task is OPEN and assigned to a
              # DeliveryVehicle.
              rpc :DeleteTask, ::Google::Maps::FleetEngine::Delivery::V1::DeleteTaskRequest, ::Google::Protobuf::Empty
              # Updates `Task` data.
              rpc :UpdateTask, ::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest, ::Google::Maps::FleetEngine::Delivery::V1::Task
              # Gets all `Task`s that meet the specified filtering criteria.
              rpc :ListTasks, ::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest, ::Google::Maps::FleetEngine::Delivery::V1::ListTasksResponse
              # Returns the specified `TaskTrackingInfo` instance.
              rpc :GetTaskTrackingInfo, ::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest, ::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingInfo
              # Gets all `DeliveryVehicle`s that meet the specified filtering criteria.
              rpc :ListDeliveryVehicles, ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest, ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
