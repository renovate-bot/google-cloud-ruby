# frozen_string_literal: true

# Copyright 2022 Google LLC
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
      module V1
        # Reservation Affinity for consuming Zonal reservation.
        # @!attribute [rw] consume_reservation_type
        #   @return [::Google::Cloud::Notebooks::V1::ReservationAffinity::Type]
        #     Optional. Type of reservation to consume
        # @!attribute [rw] key
        #   @return [::String]
        #     Optional. Corresponds to the label key of reservation resource.
        # @!attribute [rw] values
        #   @return [::Array<::String>]
        #     Optional. Corresponds to the label values of reservation resource.
        class ReservationAffinity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates whether to consume capacity from an reservation or not.
          module Type
            # Default type.
            TYPE_UNSPECIFIED = 0

            # Do not consume from any allocated capacity.
            NO_RESERVATION = 1

            # Consume any reservation available.
            ANY_RESERVATION = 2

            # Must consume from a specific reservation. Must specify key value fields
            # for specifying the reservations.
            SPECIFIC_RESERVATION = 3
          end
        end

        # The definition of a notebook instance.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The name of this notebook instance. Format:
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        # @!attribute [rw] vm_image
        #   @return [::Google::Cloud::Notebooks::V1::VmImage]
        #     Use a Compute Engine VM image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `vm_image`, `container_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] container_image
        #   @return [::Google::Cloud::Notebooks::V1::ContainerImage]
        #     Use a container image to start the notebook instance.
        #
        #     Note: The following fields are mutually exclusive: `container_image`, `vm_image`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] post_startup_script
        #   @return [::String]
        #     Path to a Bash script that automatically runs after a notebook instance
        #     fully boots up. The path must be a URL or
        #     Cloud Storage path (`gs://path-to-file/file-name`).
        # @!attribute [r] proxy_uri
        #   @return [::String]
        #     Output only. The proxy endpoint that is used to access the Jupyter notebook.
        # @!attribute [rw] instance_owners
        #   @return [::Array<::String>]
        #     Input only. The owner of this instance after creation. Format: `alias@example.com`
        #
        #     Currently supports one owner only. If not specified, all of the service
        #     account users of your VM instance's service account can use
        #     the instance.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     The service account on this instance, giving access to other Google
        #     Cloud services.
        #     You can use any service account within the same project, but you
        #     must have the service account user permission to use the instance.
        #
        #     If not specified, the [Compute Engine default service
        #     account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
        #     is used.
        # @!attribute [rw] service_account_scopes
        #   @return [::Array<::String>]
        #     Optional. The URIs of service account scopes to be included in
        #     Compute Engine instances.
        #
        #     If not specified, the following
        #     [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam)
        #     are defined:
        #      - https://www.googleapis.com/auth/cloud-platform
        #      - https://www.googleapis.com/auth/userinfo.email
        #     If not using default scopes, you need at least:
        #        https://www.googleapis.com/auth/compute
        # @!attribute [rw] machine_type
        #   @return [::String]
        #     Required. The [Compute Engine machine
        #     type](https://cloud.google.com/compute/docs/machine-types) of this
        #     instance.
        # @!attribute [rw] accelerator_config
        #   @return [::Google::Cloud::Notebooks::V1::Instance::AcceleratorConfig]
        #     The hardware accelerator used on this instance. If you use
        #     accelerators, make sure that your configuration has
        #     [enough vCPUs and memory to support the `machine_type` you have
        #     selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
        # @!attribute [r] state
        #   @return [::Google::Cloud::Notebooks::V1::Instance::State]
        #     Output only. The state of this instance.
        # @!attribute [rw] install_gpu_driver
        #   @return [::Boolean]
        #     Whether the end user authorizes Google Cloud to install GPU driver
        #     on this instance.
        #     If this field is empty or set to false, the GPU driver won't be installed.
        #     Only applicable to instances with GPUs.
        # @!attribute [rw] custom_gpu_driver_path
        #   @return [::String]
        #     Specify a custom Cloud Storage path where the GPU driver is stored.
        #     If not specified, we'll automatically choose from official GPU drivers.
        # @!attribute [rw] boot_disk_type
        #   @return [::Google::Cloud::Notebooks::V1::Instance::DiskType]
        #     Input only. The type of the boot disk attached to this instance, defaults to
        #     standard persistent disk (`PD_STANDARD`).
        # @!attribute [rw] boot_disk_size_gb
        #   @return [::Integer]
        #     Input only. The size of the boot disk in GB attached to this instance, up to a maximum
        #     of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not
        #     specified, this defaults to 100.
        # @!attribute [rw] data_disk_type
        #   @return [::Google::Cloud::Notebooks::V1::Instance::DiskType]
        #     Input only. The type of the data disk attached to this instance, defaults to
        #     standard persistent disk (`PD_STANDARD`).
        # @!attribute [rw] data_disk_size_gb
        #   @return [::Integer]
        #     Input only. The size of the data disk in GB attached to this instance, up to a maximum
        #     of 64000 GB (64 TB). You can choose the size of the data disk based on how
        #     big your notebooks and data are. If not specified, this defaults to 100.
        # @!attribute [rw] no_remove_data_disk
        #   @return [::Boolean]
        #     Input only. If true, the data disk will not be auto deleted when deleting the instance.
        # @!attribute [rw] disk_encryption
        #   @return [::Google::Cloud::Notebooks::V1::Instance::DiskEncryption]
        #     Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
        # @!attribute [rw] kms_key
        #   @return [::String]
        #     Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption
        #     is CMEK.
        #     Format:
        #     `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
        #
        #     Learn more about [using your own encryption keys](/kms/docs/quickstart).
        # @!attribute [r] disks
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Instance::Disk>]
        #     Output only. Attached disks to notebook instance.
        # @!attribute [rw] shielded_instance_config
        #   @return [::Google::Cloud::Notebooks::V1::Instance::ShieldedInstanceConfig]
        #     Optional. Shielded VM configuration.
        #     [Images using supported Shielded VM
        #     features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
        # @!attribute [rw] no_public_ip
        #   @return [::Boolean]
        #     If true, no public IP will be assigned to this instance.
        # @!attribute [rw] no_proxy_access
        #   @return [::Boolean]
        #     If true, the notebook instance will not register with the proxy.
        # @!attribute [rw] network
        #   @return [::String]
        #     The name of the VPC that this instance is in.
        #     Format:
        #     `projects/{project_id}/global/networks/{network_id}`
        # @!attribute [rw] subnet
        #   @return [::String]
        #     The name of the subnet that this instance is in.
        #     Format:
        #     `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels to apply to this instance.
        #     These can be later modified by the setLabels method.
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Custom metadata to apply to this instance.
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Optional. The Compute Engine tags to add to runtime (see [Tagging
        #     instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
        # @!attribute [rw] upgrade_history
        #   @return [::Array<::Google::Cloud::Notebooks::V1::Instance::UpgradeHistoryEntry>]
        #     The upgrade history of this instance.
        # @!attribute [rw] nic_type
        #   @return [::Google::Cloud::Notebooks::V1::Instance::NicType]
        #     Optional. The type of vNIC to be used on this interface. This may be gVNIC or
        #     VirtioNet.
        # @!attribute [rw] reservation_affinity
        #   @return [::Google::Cloud::Notebooks::V1::ReservationAffinity]
        #     Optional. The optional reservation affinity. Setting this field will apply
        #     the specified [Zonal Compute
        #     Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
        #     to this notebook instance.
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. Email address of entity that sent original CreateInstance request.
        # @!attribute [rw] can_ip_forward
        #   @return [::Boolean]
        #     Optional. Flag to enable ip forwarding or not, default false/off.
        #     https://cloud.google.com/vpc/docs/using-routes#canipforward
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Instance creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Instance update time.
        class Instance
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Definition of a hardware accelerator. Note that not all combinations
          # of `type` and `core_count` are valid. Check [GPUs on Compute
          # Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a
          # valid combination. TPUs are not supported.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Notebooks::V1::Instance::AcceleratorType]
          #     Type of this accelerator.
          # @!attribute [rw] core_count
          #   @return [::Integer]
          #     Count of cores of this accelerator.
          class AcceleratorConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # An instance-attached disk resource.
          # @!attribute [rw] auto_delete
          #   @return [::Boolean]
          #     Indicates whether the disk will be auto-deleted when the instance is
          #     deleted (but not when the disk is detached from the instance).
          # @!attribute [rw] boot
          #   @return [::Boolean]
          #     Indicates that this is a boot disk. The virtual machine will use the
          #     first partition of the disk for its root filesystem.
          # @!attribute [rw] device_name
          #   @return [::String]
          #     Indicates a unique device name of your choice that is reflected into the
          #     `/dev/disk/by-id/google-*` tree of a Linux operating system running
          #     within the instance. This name can be used to reference the device for
          #     mounting, resizing, and so on, from within the instance.
          #
          #     If not specified, the server chooses a default device name to apply to
          #     this disk, in the form persistent-disk-x, where x is a number assigned by
          #     Google Compute Engine.This field is only applicable for persistent disks.
          # @!attribute [rw] disk_size_gb
          #   @return [::Integer]
          #     Indicates the size of the disk in base-2 GB.
          # @!attribute [rw] guest_os_features
          #   @return [::Array<::Google::Cloud::Notebooks::V1::Instance::Disk::GuestOsFeature>]
          #     Indicates a list of features to enable on the guest operating system.
          #     Applicable only for bootable images. Read  Enabling guest operating
          #     system features to see a list of available options.
          # @!attribute [rw] index
          #   @return [::Integer]
          #     A zero-based index to this disk, where 0 is reserved for the
          #     boot disk. If you have many disks attached to an instance, each disk
          #     would have a unique index number.
          # @!attribute [rw] interface
          #   @return [::String]
          #     Indicates the disk interface to use for attaching this disk, which is
          #     either SCSI or NVME. The default is SCSI. Persistent disks must always
          #     use SCSI and the request will fail if you attempt to attach a persistent
          #     disk in any other format than SCSI. Local SSDs can use either NVME or
          #     SCSI. For performance characteristics of SCSI over NVMe, see Local SSD
          #     performance.
          #     Valid values:
          #
          #     * `NVME`
          #     * `SCSI`
          # @!attribute [rw] kind
          #   @return [::String]
          #     Type of the resource. Always compute#attachedDisk for attached
          #     disks.
          # @!attribute [rw] licenses
          #   @return [::Array<::String>]
          #     A list of publicly visible licenses. Reserved for Google's use.
          #     A License represents billing and aggregate usage data for public
          #     and marketplace images.
          # @!attribute [rw] mode
          #   @return [::String]
          #     The mode in which to attach this disk, either `READ_WRITE` or
          #     `READ_ONLY`. If not specified, the default is to attach the disk in
          #     `READ_WRITE` mode. Valid values:
          #
          #     * `READ_ONLY`
          #     * `READ_WRITE`
          # @!attribute [rw] source
          #   @return [::String]
          #     Indicates a valid partial or full URL to an existing Persistent Disk
          #     resource.
          # @!attribute [rw] type
          #   @return [::String]
          #     Indicates the type of the disk, either `SCRATCH` or `PERSISTENT`.
          #     Valid values:
          #
          #     * `PERSISTENT`
          #     * `SCRATCH`
          class Disk
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Guest OS features for boot disk.
            # @!attribute [rw] type
            #   @return [::String]
            #     The ID of a supported feature. Read  Enabling guest operating system
            #     features to see a list of available options.
            #     Valid values:
            #
            #     * `FEATURE_TYPE_UNSPECIFIED`
            #     * `MULTI_IP_SUBNET`
            #     * `SECURE_BOOT`
            #     * `UEFI_COMPATIBLE`
            #     * `VIRTIO_SCSI_MULTIQUEUE`
            #     * `WINDOWS`
            class GuestOsFeature
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # A set of Shielded Instance options.
          # Check [Images using supported Shielded VM
          # features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
          # Not all combinations are valid.
          # @!attribute [rw] enable_secure_boot
          #   @return [::Boolean]
          #     Defines whether the instance has Secure Boot enabled.
          #
          #     Secure Boot helps ensure that the system only runs authentic software by
          #     verifying the digital signature of all boot components, and halting the
          #     boot process if signature verification fails. Disabled by default.
          # @!attribute [rw] enable_vtpm
          #   @return [::Boolean]
          #     Defines whether the instance has the vTPM enabled. Enabled by default.
          # @!attribute [rw] enable_integrity_monitoring
          #   @return [::Boolean]
          #     Defines whether the instance has integrity monitoring enabled.
          #
          #     Enables monitoring and attestation of the boot integrity of the instance.
          #     The attestation is performed against the integrity policy baseline. This
          #     baseline is initially derived from the implicitly trusted boot image when
          #     the instance is created. Enabled by default.
          class ShieldedInstanceConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The entry of VM image upgrade history.
          # @!attribute [rw] snapshot
          #   @return [::String]
          #     The snapshot of the boot disk of this notebook instance before upgrade.
          # @!attribute [rw] vm_image
          #   @return [::String]
          #     The VM image before this instance upgrade.
          # @!attribute [rw] container_image
          #   @return [::String]
          #     The container image before this instance upgrade.
          # @!attribute [rw] framework
          #   @return [::String]
          #     The framework of this notebook instance.
          # @!attribute [rw] version
          #   @return [::String]
          #     The version of the notebook instance before this upgrade.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Notebooks::V1::Instance::UpgradeHistoryEntry::State]
          #     The state of this instance upgrade history entry.
          # @!attribute [rw] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time that this instance upgrade history entry is created.
          # @!attribute [rw] target_image
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::String]
          #     Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
          # @!attribute [rw] action
          #   @return [::Google::Cloud::Notebooks::V1::Instance::UpgradeHistoryEntry::Action]
          #     Action. Rolloback or Upgrade.
          # @!attribute [rw] target_version
          #   @return [::String]
          #     Target VM Version, like m63.
          class UpgradeHistoryEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The definition of the states of this upgrade history entry.
            module State
              # State is not specified.
              STATE_UNSPECIFIED = 0

              # The instance upgrade is started.
              STARTED = 1

              # The instance upgrade is succeeded.
              SUCCEEDED = 2

              # The instance upgrade is failed.
              FAILED = 3
            end

            # The definition of operations of this upgrade history entry.
            module Action
              # Operation is not specified.
              ACTION_UNSPECIFIED = 0

              # Upgrade.
              UPGRADE = 1

              # Rollback.
              ROLLBACK = 2
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

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Definition of the types of hardware accelerators that can be used on this
          # instance.
          module AcceleratorType
            # Accelerator type is not specified.
            ACCELERATOR_TYPE_UNSPECIFIED = 0

            # Accelerator type is Nvidia Tesla K80.
            NVIDIA_TESLA_K80 = 1

            # Accelerator type is Nvidia Tesla P100.
            NVIDIA_TESLA_P100 = 2

            # Accelerator type is Nvidia Tesla V100.
            NVIDIA_TESLA_V100 = 3

            # Accelerator type is Nvidia Tesla P4.
            NVIDIA_TESLA_P4 = 4

            # Accelerator type is Nvidia Tesla T4.
            NVIDIA_TESLA_T4 = 5

            # Accelerator type is Nvidia Tesla A100.
            NVIDIA_TESLA_A100 = 11

            # Accelerator type is NVIDIA Tesla T4 Virtual Workstations.
            NVIDIA_TESLA_T4_VWS = 8

            # Accelerator type is NVIDIA Tesla P100 Virtual Workstations.
            NVIDIA_TESLA_P100_VWS = 9

            # Accelerator type is NVIDIA Tesla P4 Virtual Workstations.
            NVIDIA_TESLA_P4_VWS = 10

            # (Coming soon) Accelerator type is TPU V2.
            TPU_V2 = 6

            # (Coming soon) Accelerator type is TPU V3.
            TPU_V3 = 7
          end

          # The definition of the states of this instance.
          module State
            # State is not specified.
            STATE_UNSPECIFIED = 0

            # The control logic is starting the instance.
            STARTING = 1

            # The control logic is installing required frameworks and registering the
            # instance with notebook proxy
            PROVISIONING = 2

            # The instance is running.
            ACTIVE = 3

            # The control logic is stopping the instance.
            STOPPING = 4

            # The instance is stopped.
            STOPPED = 5

            # The instance is deleted.
            DELETED = 6

            # The instance is upgrading.
            UPGRADING = 7

            # The instance is being created.
            INITIALIZING = 8

            # The instance is getting registered.
            REGISTERING = 9

            # The instance is suspending.
            SUSPENDING = 10

            # The instance is suspended.
            SUSPENDED = 11
          end

          # Possible disk types for notebook instances.
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

          # Definition of the disk encryption options.
          module DiskEncryption
            # Disk encryption is not specified.
            DISK_ENCRYPTION_UNSPECIFIED = 0

            # Use Google managed encryption keys to encrypt the boot disk.
            GMEK = 1

            # Use customer managed encryption keys to encrypt the boot disk.
            CMEK = 2
          end

          # The type of vNIC driver.
          # Default should be UNSPECIFIED_NIC_TYPE.
          module NicType
            # No type specified.
            UNSPECIFIED_NIC_TYPE = 0

            # VIRTIO
            VIRTIO_NET = 1

            # GVNIC
            GVNIC = 2
          end
        end
      end
    end
  end
end
