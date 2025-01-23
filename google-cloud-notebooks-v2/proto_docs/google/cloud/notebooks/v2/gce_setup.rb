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
    module Notebooks
      module V2
        # The definition of a network interface resource attached to a VM.
        # @!attribute [rw] network
        #   @return [::String]
        #     Optional. The name of the VPC that this VM instance is in.
        #     Format:
        #     `projects/{project_id}/global/networks/{network_id}`
        # @!attribute [rw] subnet
        #   @return [::String]
        #     Optional. The name of the subnet that this VM instance is in.
        #     Format:
        #     `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
        # @!attribute [rw] nic_type
        #   @return [::Google::Cloud::Notebooks::V2::NetworkInterface::NicType]
        #     Optional. The type of vNIC to be used on this interface. This may be gVNIC
        #     or VirtioNet.
        class NetworkInterface
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of vNIC driver.
          # Default should be NIC_TYPE_UNSPECIFIED.
          module NicType
            # No type specified.
            NIC_TYPE_UNSPECIFIED = 0

            # VIRTIO
            VIRTIO_NET = 1

            # GVNIC
            GVNIC = 2
          end
        end

        # Definition of a custom Compute Engine virtual machine image for starting a
        # notebook instance with the environment installed directly on the VM.
        # @!attribute [rw] project
        #   @return [::String]
        #     Required. The name of the Google Cloud project that this VM image belongs
        #     to. Format: `{project_id}`
        # @!attribute [rw] name
        #   @return [::String]
        #     Optional. Use VM image name to find the image.
        #
        #     Note: The following fields are mutually exclusive: `name`, `family`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] family
        #   @return [::String]
        #     Optional. Use this VM image family to find the image; the newest image in
        #     this family will be used.
        #
        #     Note: The following fields are mutually exclusive: `family`, `name`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class VmImage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Definition of a container image for starting a notebook instance with the
        # environment installed in a container.
        # @!attribute [rw] repository
        #   @return [::String]
        #     Required. The path to the container image repository. For example:
        #     `gcr.io/{project_id}/{image_name}`
        # @!attribute [rw] tag
        #   @return [::String]
        #     Optional. The tag of the container image. If not specified, this defaults
        #     to the latest tag.
        class ContainerImage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An accelerator configuration for a VM instance
        # Definition of a hardware accelerator. Note that there is no check on `type`
        # and `core_count` combinations. TPUs are not supported.
        # See [GPUs on Compute
        # Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a
        # valid combination.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Notebooks::V2::AcceleratorConfig::AcceleratorType]
        #     Optional. Type of this accelerator.
        # @!attribute [rw] core_count
        #   @return [::Integer]
        #     Optional. Count of cores of this accelerator.
        class AcceleratorConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Definition of the types of hardware accelerators that can be used on
          # this instance.
          module AcceleratorType
            # Accelerator type is not specified.
            ACCELERATOR_TYPE_UNSPECIFIED = 0

            # Accelerator type is Nvidia Tesla P100.
            NVIDIA_TESLA_P100 = 2

            # Accelerator type is Nvidia Tesla V100.
            NVIDIA_TESLA_V100 = 3

            # Accelerator type is Nvidia Tesla P4.
            NVIDIA_TESLA_P4 = 4

            # Accelerator type is Nvidia Tesla T4.
            NVIDIA_TESLA_T4 = 5

            # Accelerator type is Nvidia Tesla A100 - 40GB.
            NVIDIA_TESLA_A100 = 11

            # Accelerator type is Nvidia Tesla A100 - 80GB.
            NVIDIA_A100_80GB = 12

            # Accelerator type is Nvidia Tesla L4.
            NVIDIA_L4 = 13

            # Accelerator type is NVIDIA Tesla T4 Virtual Workstations.
            NVIDIA_TESLA_T4_VWS = 8

            # Accelerator type is NVIDIA Tesla P100 Virtual Workstations.
            NVIDIA_TESLA_P100_VWS = 9

            # Accelerator type is NVIDIA Tesla P4 Virtual Workstations.
            NVIDIA_TESLA_P4_VWS = 10
          end
        end

        # A set of Shielded Instance options.
        # See [Images using supported Shielded VM
        # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
        # Not all combinations are valid.
        # @!attribute [rw] enable_secure_boot
        #   @return [::Boolean]
        #     Optional. Defines whether the VM instance has Secure Boot enabled.
        #
        #     Secure Boot helps ensure that the system only runs authentic software by
        #     verifying the digital signature of all boot components, and halting the
        #     boot process if signature verification fails. Disabled by default.
        # @!attribute [rw] enable_vtpm
        #   @return [::Boolean]
        #     Optional. Defines whether the VM instance has the vTPM enabled. Enabled by
        #     default.
        # @!attribute [rw] enable_integrity_monitoring
        #   @return [::Boolean]
        #     Optional. Defines whether the VM instance has integrity monitoring enabled.
        #
        #     Enables monitoring and attestation of the boot integrity of the VM
        #     instance. The attestation is performed against the integrity policy
        #     baseline. This baseline is initially derived from the implicitly trusted
        #     boot image when the VM instance is created. Enabled by default.
        class ShieldedInstanceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A GPU driver configuration
        # @!attribute [rw] enable_gpu_driver
        #   @return [::Boolean]
        #     Optional. Whether the end user authorizes Google Cloud to install GPU
        #     driver on this VM instance. If this field is empty or set to false, the GPU
        #     driver won't be installed. Only applicable to instances with GPUs.
        # @!attribute [rw] custom_gpu_driver_path
        #   @return [::String]
        #     Optional. Specify a custom Cloud Storage path where the GPU driver is
        #     stored. If not specified, we'll automatically choose from official GPU
        #     drivers.
        class GPUDriverConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An instance-attached disk resource.
        # @!attribute [rw] disk_size_gb
        #   @return [::Integer]
        #     Optional. The size of the disk in GB attached to this VM instance, up to a
        #     maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
        # @!attribute [rw] disk_type
        #   @return [::Google::Cloud::Notebooks::V2::DiskType]
        #     Optional. Input only. Indicates the type of the disk.
        # @!attribute [rw] disk_encryption
        #   @return [::Google::Cloud::Notebooks::V2::DiskEncryption]
        #     Optional. Input only. Disk encryption method used on the boot and data
        #     disks, defaults to GMEK.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. Input only. The KMS key used to encrypt the disks, only
        #     applicable if disk_encryption is CMEK. Format:
        #     `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
        #
        #     Learn more about using your own encryption keys.
        class DataDisk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The definition of a boot disk.
        # @!attribute [rw] disk_size_gb
        #   @return [::Integer]
        #     Optional. The size of the boot disk in GB attached to this instance, up to
        #     a maximum of 64000 GB (64 TB). If not specified, this defaults to the
        #     recommended value of 150GB.
        # @!attribute [rw] disk_type
        #   @return [::Google::Cloud::Notebooks::V2::DiskType]
        #     Optional. Indicates the type of the disk.
        # @!attribute [rw] disk_encryption
        #   @return [::Google::Cloud::Notebooks::V2::DiskEncryption]
        #     Optional. Input only. Disk encryption method used on the boot and data
        #     disks, defaults to GMEK.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Optional. Input only. The KMS key used to encrypt the disks, only
        #     applicable if disk_encryption is CMEK. Format:
        #     `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
        #
        #     Learn more about using your own encryption keys.
        class BootDisk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A service account that acts as an identity.
        # @!attribute [rw] email
        #   @return [::String]
        #     Optional. Email address of the service account.
        # @!attribute [r] scopes
        #   @return [::Array<::String>]
        #     Output only. The list of scopes to be made available for this service
        #     account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
        class ServiceAccount
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The definition of how to configure a VM instance outside of Resources and
        # Identity.
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     Optional. The machine type of the VM instance.
        #     https://cloud.google.com/compute/docs/machine-resource
        # @!attribute [rw] accelerator_configs
        #   @return [::Array<::Google::Cloud::Notebooks::V2::AcceleratorConfig>]
        #     Optional. The hardware accelerators used on this instance. If you use
        #     accelerators, make sure that your configuration has
        #     [enough vCPUs and memory to support the `machine_type` you have
        #     selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
        #     Currently supports only one accelerator configuration.
        # @!attribute [rw] service_accounts
        #   @return [::Array<::Google::Cloud::Notebooks::V2::ServiceAccount>]
        #     Optional. The service account that serves as an identity for the VM
        #     instance. Currently supports only one service account.
        # @!attribute [rw] vm_image
        #   @return [::Google::Cloud::Notebooks::V2::VmImage]
        #     Optional. Use a Compute Engine VM image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `vm_image`, `container_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] container_image
        #   @return [::Google::Cloud::Notebooks::V2::ContainerImage]
        #     Optional. Use a container image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `container_image`, `vm_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] boot_disk
        #   @return [::Google::Cloud::Notebooks::V2::BootDisk]
        #     Optional. The boot disk for the VM.
        # @!attribute [rw] data_disks
        #   @return [::Array<::Google::Cloud::Notebooks::V2::DataDisk>]
        #     Optional. Data disks attached to the VM instance.
        #     Currently supports only one data disk.
        # @!attribute [rw] shielded_instance_config
        #   @return [::Google::Cloud::Notebooks::V2::ShieldedInstanceConfig]
        #     Optional. Shielded VM configuration.
        #     [Images using supported Shielded VM
        #     features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
        # @!attribute [rw] network_interfaces
        #   @return [::Array<::Google::Cloud::Notebooks::V2::NetworkInterface>]
        #     Optional. The network interfaces for the VM.
        #     Supports only one interface.
        # @!attribute [rw] disable_public_ip
        #   @return [::Boolean]
        #     Optional. If true, no external IP will be assigned to this VM instance.
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Optional. The Compute Engine tags to add to runtime (see [Tagging
        #     instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Custom metadata to apply to this instance.
        # @!attribute [rw] enable_ip_forwarding
        #   @return [::Boolean]
        #     Optional. Flag to enable ip forwarding or not, default false/off.
        #     https://cloud.google.com/vpc/docs/using-routes#canipforward
        # @!attribute [rw] gpu_driver_config
        #   @return [::Google::Cloud::Notebooks::V2::GPUDriverConfig]
        #     Optional. Configuration for GPU drivers.
        class GceSetup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Definition of the disk encryption options.
        module DiskEncryption
          # Disk encryption is not specified.
          DISK_ENCRYPTION_UNSPECIFIED = 0

          # Use Google managed encryption keys to encrypt the boot disk.
          GMEK = 1

          # Use customer managed encryption keys to encrypt the boot disk.
          CMEK = 2
        end

        # Possible disk types.
        module DiskType
          # Disk type not set.
          DISK_TYPE_UNSPECIFIED = 0

          # Standard persistent disk type.
          PD_STANDARD = 1

          # SSD persistent disk type.
          PD_SSD = 2

          # Balanced persistent disk type.
          PD_BALANCED = 3

          # Extreme persistent disk type.
          PD_EXTREME = 4
        end
      end
    end
  end
end
