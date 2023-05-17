# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/explanation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/aiplatform/v1/explanation_metadata_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/protobuf/struct_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/explanation.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.Explanation" do
      repeated :attributions, :message, 1, "google.cloud.aiplatform.v1.Attribution"
      repeated :neighbors, :message, 2, "google.cloud.aiplatform.v1.Neighbor"
    end
    add_message "google.cloud.aiplatform.v1.ModelExplanation" do
      repeated :mean_attributions, :message, 1, "google.cloud.aiplatform.v1.Attribution"
    end
    add_message "google.cloud.aiplatform.v1.Attribution" do
      optional :baseline_output_value, :double, 1
      optional :instance_output_value, :double, 2
      optional :feature_attributions, :message, 3, "google.protobuf.Value"
      repeated :output_index, :int32, 4
      optional :output_display_name, :string, 5
      optional :approximation_error, :double, 6
      optional :output_name, :string, 7
    end
    add_message "google.cloud.aiplatform.v1.Neighbor" do
      optional :neighbor_id, :string, 1
      optional :neighbor_distance, :double, 2
    end
    add_message "google.cloud.aiplatform.v1.ExplanationSpec" do
      optional :parameters, :message, 1, "google.cloud.aiplatform.v1.ExplanationParameters"
      optional :metadata, :message, 2, "google.cloud.aiplatform.v1.ExplanationMetadata"
    end
    add_message "google.cloud.aiplatform.v1.ExplanationParameters" do
      optional :top_k, :int32, 4
      optional :output_indices, :message, 5, "google.protobuf.ListValue"
      oneof :method do
        optional :sampled_shapley_attribution, :message, 1, "google.cloud.aiplatform.v1.SampledShapleyAttribution"
        optional :integrated_gradients_attribution, :message, 2, "google.cloud.aiplatform.v1.IntegratedGradientsAttribution"
        optional :xrai_attribution, :message, 3, "google.cloud.aiplatform.v1.XraiAttribution"
        optional :examples, :message, 7, "google.cloud.aiplatform.v1.Examples"
      end
    end
    add_message "google.cloud.aiplatform.v1.SampledShapleyAttribution" do
      optional :path_count, :int32, 1
    end
    add_message "google.cloud.aiplatform.v1.IntegratedGradientsAttribution" do
      optional :step_count, :int32, 1
      optional :smooth_grad_config, :message, 2, "google.cloud.aiplatform.v1.SmoothGradConfig"
      optional :blur_baseline_config, :message, 3, "google.cloud.aiplatform.v1.BlurBaselineConfig"
    end
    add_message "google.cloud.aiplatform.v1.XraiAttribution" do
      optional :step_count, :int32, 1
      optional :smooth_grad_config, :message, 2, "google.cloud.aiplatform.v1.SmoothGradConfig"
      optional :blur_baseline_config, :message, 3, "google.cloud.aiplatform.v1.BlurBaselineConfig"
    end
    add_message "google.cloud.aiplatform.v1.SmoothGradConfig" do
      optional :noisy_sample_count, :int32, 3
      oneof :GradientNoiseSigma do
        optional :noise_sigma, :float, 1
        optional :feature_noise_sigma, :message, 2, "google.cloud.aiplatform.v1.FeatureNoiseSigma"
      end
    end
    add_message "google.cloud.aiplatform.v1.FeatureNoiseSigma" do
      repeated :noise_sigma, :message, 1, "google.cloud.aiplatform.v1.FeatureNoiseSigma.NoiseSigmaForFeature"
    end
    add_message "google.cloud.aiplatform.v1.FeatureNoiseSigma.NoiseSigmaForFeature" do
      optional :name, :string, 1
      optional :sigma, :float, 2
    end
    add_message "google.cloud.aiplatform.v1.BlurBaselineConfig" do
      optional :max_blur_sigma, :float, 1
    end
    add_message "google.cloud.aiplatform.v1.Examples" do
      optional :neighbor_count, :int32, 3
      oneof :source do
        optional :example_gcs_source, :message, 5, "google.cloud.aiplatform.v1.Examples.ExampleGcsSource"
      end
      oneof :config do
        optional :nearest_neighbor_search_config, :message, 2, "google.protobuf.Value"
        optional :presets, :message, 4, "google.cloud.aiplatform.v1.Presets"
      end
    end
    add_message "google.cloud.aiplatform.v1.Examples.ExampleGcsSource" do
      optional :data_format, :enum, 1, "google.cloud.aiplatform.v1.Examples.ExampleGcsSource.DataFormat"
      optional :gcs_source, :message, 2, "google.cloud.aiplatform.v1.GcsSource"
    end
    add_enum "google.cloud.aiplatform.v1.Examples.ExampleGcsSource.DataFormat" do
      value :DATA_FORMAT_UNSPECIFIED, 0
      value :JSONL, 1
    end
    add_message "google.cloud.aiplatform.v1.Presets" do
      proto3_optional :query, :enum, 1, "google.cloud.aiplatform.v1.Presets.Query"
      optional :modality, :enum, 2, "google.cloud.aiplatform.v1.Presets.Modality"
    end
    add_enum "google.cloud.aiplatform.v1.Presets.Query" do
      value :PRECISE, 0
      value :FAST, 1
    end
    add_enum "google.cloud.aiplatform.v1.Presets.Modality" do
      value :MODALITY_UNSPECIFIED, 0
      value :IMAGE, 1
      value :TEXT, 2
      value :TABULAR, 3
    end
    add_message "google.cloud.aiplatform.v1.ExplanationSpecOverride" do
      optional :parameters, :message, 1, "google.cloud.aiplatform.v1.ExplanationParameters"
      optional :metadata, :message, 2, "google.cloud.aiplatform.v1.ExplanationMetadataOverride"
      optional :examples_override, :message, 3, "google.cloud.aiplatform.v1.ExamplesOverride"
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadataOverride" do
      map :inputs, :string, :message, 1, "google.cloud.aiplatform.v1.ExplanationMetadataOverride.InputMetadataOverride"
    end
    add_message "google.cloud.aiplatform.v1.ExplanationMetadataOverride.InputMetadataOverride" do
      repeated :input_baselines, :message, 1, "google.protobuf.Value"
    end
    add_message "google.cloud.aiplatform.v1.ExamplesOverride" do
      optional :neighbor_count, :int32, 1
      optional :crowding_count, :int32, 2
      repeated :restrictions, :message, 3, "google.cloud.aiplatform.v1.ExamplesRestrictionsNamespace"
      optional :return_embeddings, :bool, 4
      optional :data_format, :enum, 5, "google.cloud.aiplatform.v1.ExamplesOverride.DataFormat"
    end
    add_enum "google.cloud.aiplatform.v1.ExamplesOverride.DataFormat" do
      value :DATA_FORMAT_UNSPECIFIED, 0
      value :INSTANCES, 1
      value :EMBEDDINGS, 2
    end
    add_message "google.cloud.aiplatform.v1.ExamplesRestrictionsNamespace" do
      optional :namespace_name, :string, 1
      repeated :allow, :string, 2
      repeated :deny, :string, 3
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        Explanation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Explanation").msgclass
        ModelExplanation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ModelExplanation").msgclass
        Attribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Attribution").msgclass
        Neighbor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Neighbor").msgclass
        ExplanationSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationSpec").msgclass
        ExplanationParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationParameters").msgclass
        SampledShapleyAttribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SampledShapleyAttribution").msgclass
        IntegratedGradientsAttribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.IntegratedGradientsAttribution").msgclass
        XraiAttribution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.XraiAttribution").msgclass
        SmoothGradConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.SmoothGradConfig").msgclass
        FeatureNoiseSigma = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureNoiseSigma").msgclass
        FeatureNoiseSigma::NoiseSigmaForFeature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.FeatureNoiseSigma.NoiseSigmaForFeature").msgclass
        BlurBaselineConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BlurBaselineConfig").msgclass
        Examples = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Examples").msgclass
        Examples::ExampleGcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Examples.ExampleGcsSource").msgclass
        Examples::ExampleGcsSource::DataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Examples.ExampleGcsSource.DataFormat").enummodule
        Presets = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Presets").msgclass
        Presets::Query = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Presets.Query").enummodule
        Presets::Modality = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Presets.Modality").enummodule
        ExplanationSpecOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationSpecOverride").msgclass
        ExplanationMetadataOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadataOverride").msgclass
        ExplanationMetadataOverride::InputMetadataOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExplanationMetadataOverride.InputMetadataOverride").msgclass
        ExamplesOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExamplesOverride").msgclass
        ExamplesOverride::DataFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExamplesOverride.DataFormat").enummodule
        ExamplesRestrictionsNamespace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ExamplesRestrictionsNamespace").msgclass
      end
    end
  end
end
