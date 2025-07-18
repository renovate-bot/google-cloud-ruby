# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module SecurityCenter
      module V2
        # Represents an operating system process.
        # @!attribute [rw] name
        #   @return [::String]
        #     The process name, as displayed in utilities like `top` and `ps`. This name
        #     can be accessed through `/proc/[pid]/comm` and changed with
        #     `prctl(PR_SET_NAME)`.
        # @!attribute [rw] binary
        #   @return [::Google::Cloud::SecurityCenter::V2::File]
        #     File information for the process executable.
        # @!attribute [rw] libraries
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::File>]
        #     File information for libraries loaded by the process.
        # @!attribute [rw] script
        #   @return [::Google::Cloud::SecurityCenter::V2::File]
        #     When the process represents the invocation of a script, `binary` provides
        #     information about the interpreter, while `script` provides information
        #     about the script file provided to the interpreter.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Process arguments as JSON encoded strings.
        # @!attribute [rw] arguments_truncated
        #   @return [::Boolean]
        #     True if `args` is incomplete.
        # @!attribute [rw] env_variables
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::EnvironmentVariable>]
        #     Process environment variables.
        # @!attribute [rw] env_variables_truncated
        #   @return [::Boolean]
        #     True if `env_variables` is incomplete.
        # @!attribute [rw] pid
        #   @return [::Integer]
        #     The process ID.
        # @!attribute [rw] parent_pid
        #   @return [::Integer]
        #     The parent process ID.
        # @!attribute [rw] user_id
        #   @return [::Integer]
        #     The ID of the user that executed the process. E.g. If this is the root user
        #     this will always be 0.
        class Process
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A name-value pair representing an environment variable used in an operating
        # system process.
        # @!attribute [rw] name
        #   @return [::String]
        #     Environment variable name as a JSON encoded string.
        # @!attribute [rw] val
        #   @return [::String]
        #     Environment variable value as a JSON encoded string.
        class EnvironmentVariable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
