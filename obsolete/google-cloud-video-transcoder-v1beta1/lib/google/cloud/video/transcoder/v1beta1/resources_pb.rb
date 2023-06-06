# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/transcoder/v1beta1/resources.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/transcoder/v1beta1/resources.proto", :syntax => :proto3) do
    add_message "google.cloud.video.transcoder.v1beta1.Job" do
      optional :name, :string, 1
      optional :input_uri, :string, 2
      optional :output_uri, :string, 3
      optional :priority, :int32, 6
      optional :origin_uri, :message, 7, "google.cloud.video.transcoder.v1beta1.Job.OriginUri"
      optional :state, :enum, 8, "google.cloud.video.transcoder.v1beta1.Job.ProcessingState"
      optional :progress, :message, 9, "google.cloud.video.transcoder.v1beta1.Progress"
      optional :failure_reason, :string, 10
      repeated :failure_details, :message, 11, "google.cloud.video.transcoder.v1beta1.FailureDetail"
      optional :create_time, :message, 12, "google.protobuf.Timestamp"
      optional :start_time, :message, 13, "google.protobuf.Timestamp"
      optional :end_time, :message, 14, "google.protobuf.Timestamp"
      optional :ttl_after_completion_days, :int32, 15
      oneof :job_config do
        optional :template_id, :string, 4
        optional :config, :message, 5, "google.cloud.video.transcoder.v1beta1.JobConfig"
      end
    end
    add_message "google.cloud.video.transcoder.v1beta1.Job.OriginUri" do
      optional :hls, :string, 1
      optional :dash, :string, 2
    end
    add_enum "google.cloud.video.transcoder.v1beta1.Job.ProcessingState" do
      value :PROCESSING_STATE_UNSPECIFIED, 0
      value :PENDING, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :FAILED, 4
    end
    add_message "google.cloud.video.transcoder.v1beta1.JobTemplate" do
      optional :name, :string, 1
      optional :config, :message, 2, "google.cloud.video.transcoder.v1beta1.JobConfig"
    end
    add_message "google.cloud.video.transcoder.v1beta1.JobConfig" do
      repeated :inputs, :message, 1, "google.cloud.video.transcoder.v1beta1.Input"
      repeated :edit_list, :message, 2, "google.cloud.video.transcoder.v1beta1.EditAtom"
      repeated :elementary_streams, :message, 3, "google.cloud.video.transcoder.v1beta1.ElementaryStream"
      repeated :mux_streams, :message, 4, "google.cloud.video.transcoder.v1beta1.MuxStream"
      repeated :manifests, :message, 5, "google.cloud.video.transcoder.v1beta1.Manifest"
      optional :output, :message, 6, "google.cloud.video.transcoder.v1beta1.Output"
      repeated :ad_breaks, :message, 7, "google.cloud.video.transcoder.v1beta1.AdBreak"
      optional :pubsub_destination, :message, 8, "google.cloud.video.transcoder.v1beta1.PubsubDestination"
      repeated :sprite_sheets, :message, 9, "google.cloud.video.transcoder.v1beta1.SpriteSheet"
      repeated :overlays, :message, 10, "google.cloud.video.transcoder.v1beta1.Overlay"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Input" do
      optional :key, :string, 1
      optional :uri, :string, 2
      optional :preprocessing_config, :message, 3, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Output" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1beta1.EditAtom" do
      optional :key, :string, 1
      repeated :inputs, :string, 2
      optional :end_time_offset, :message, 3, "google.protobuf.Duration"
      optional :start_time_offset, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1beta1.AdBreak" do
      optional :start_time_offset, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1beta1.ElementaryStream" do
      optional :key, :string, 4
      oneof :elementary_stream do
        optional :video_stream, :message, 1, "google.cloud.video.transcoder.v1beta1.VideoStream"
        optional :audio_stream, :message, 2, "google.cloud.video.transcoder.v1beta1.AudioStream"
        optional :text_stream, :message, 3, "google.cloud.video.transcoder.v1beta1.TextStream"
      end
    end
    add_message "google.cloud.video.transcoder.v1beta1.MuxStream" do
      optional :key, :string, 1
      optional :file_name, :string, 2
      optional :container, :string, 3
      repeated :elementary_streams, :string, 4
      optional :segment_settings, :message, 5, "google.cloud.video.transcoder.v1beta1.SegmentSettings"
      optional :encryption, :message, 6, "google.cloud.video.transcoder.v1beta1.Encryption"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Manifest" do
      optional :file_name, :string, 1
      optional :type, :enum, 2, "google.cloud.video.transcoder.v1beta1.Manifest.ManifestType"
      repeated :mux_streams, :string, 3
    end
    add_enum "google.cloud.video.transcoder.v1beta1.Manifest.ManifestType" do
      value :MANIFEST_TYPE_UNSPECIFIED, 0
      value :HLS, 1
      value :DASH, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.PubsubDestination" do
      optional :topic, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1beta1.SpriteSheet" do
      optional :format, :string, 1
      optional :file_prefix, :string, 2
      optional :sprite_width_pixels, :int32, 3
      optional :sprite_height_pixels, :int32, 4
      optional :column_count, :int32, 5
      optional :row_count, :int32, 6
      optional :start_time_offset, :message, 7, "google.protobuf.Duration"
      optional :end_time_offset, :message, 8, "google.protobuf.Duration"
      optional :quality, :int32, 11
      oneof :extraction_strategy do
        optional :total_count, :int32, 9
        optional :interval, :message, 10, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay" do
      optional :image, :message, 1, "google.cloud.video.transcoder.v1beta1.Overlay.Image"
      repeated :animations, :message, 2, "google.cloud.video.transcoder.v1beta1.Overlay.Animation"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.NormalizedCoordinate" do
      optional :x, :double, 1
      optional :y, :double, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.Image" do
      optional :uri, :string, 1
      optional :resolution, :message, 2, "google.cloud.video.transcoder.v1beta1.Overlay.NormalizedCoordinate"
      optional :alpha, :double, 3
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.AnimationStatic" do
      optional :xy, :message, 1, "google.cloud.video.transcoder.v1beta1.Overlay.NormalizedCoordinate"
      optional :start_time_offset, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.AnimationFade" do
      optional :fade_type, :enum, 1, "google.cloud.video.transcoder.v1beta1.Overlay.FadeType"
      optional :xy, :message, 2, "google.cloud.video.transcoder.v1beta1.Overlay.NormalizedCoordinate"
      optional :start_time_offset, :message, 3, "google.protobuf.Duration"
      optional :end_time_offset, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.AnimationEnd" do
      optional :start_time_offset, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.transcoder.v1beta1.Overlay.Animation" do
      oneof :animation_type do
        optional :animation_static, :message, 1, "google.cloud.video.transcoder.v1beta1.Overlay.AnimationStatic"
        optional :animation_fade, :message, 2, "google.cloud.video.transcoder.v1beta1.Overlay.AnimationFade"
        optional :animation_end, :message, 3, "google.cloud.video.transcoder.v1beta1.Overlay.AnimationEnd"
      end
    end
    add_enum "google.cloud.video.transcoder.v1beta1.Overlay.FadeType" do
      value :FADE_TYPE_UNSPECIFIED, 0
      value :FADE_IN, 1
      value :FADE_OUT, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig" do
      optional :color, :message, 1, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Color"
      optional :denoise, :message, 2, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Denoise"
      optional :deblock, :message, 3, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Deblock"
      optional :audio, :message, 4, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Audio"
      optional :crop, :message, 5, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Crop"
      optional :pad, :message, 6, "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Pad"
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Color" do
      optional :saturation, :double, 1
      optional :contrast, :double, 2
      optional :brightness, :double, 3
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Denoise" do
      optional :strength, :double, 1
      optional :tune, :string, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Deblock" do
      optional :strength, :double, 1
      optional :enabled, :bool, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Audio" do
      optional :lufs, :double, 1
      optional :high_boost, :bool, 2
      optional :low_boost, :bool, 3
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Crop" do
      optional :top_pixels, :int32, 1
      optional :bottom_pixels, :int32, 2
      optional :left_pixels, :int32, 3
      optional :right_pixels, :int32, 4
    end
    add_message "google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Pad" do
      optional :top_pixels, :int32, 1
      optional :bottom_pixels, :int32, 2
      optional :left_pixels, :int32, 3
      optional :right_pixels, :int32, 4
    end
    add_message "google.cloud.video.transcoder.v1beta1.VideoStream" do
      optional :codec, :string, 1
      optional :profile, :string, 2
      optional :tune, :string, 3
      optional :preset, :string, 4
      optional :height_pixels, :int32, 5
      optional :width_pixels, :int32, 6
      optional :pixel_format, :string, 7
      optional :bitrate_bps, :int32, 8
      optional :rate_control_mode, :string, 9
      optional :enable_two_pass, :bool, 10
      optional :crf_level, :int32, 11
      optional :vbv_size_bits, :int32, 12
      optional :vbv_fullness_bits, :int32, 13
      optional :allow_open_gop, :bool, 14
      optional :entropy_coder, :string, 17
      optional :b_pyramid, :bool, 18
      optional :b_frame_count, :int32, 19
      optional :frame_rate, :double, 20
      optional :aq_strength, :double, 21
      oneof :gop_mode do
        optional :gop_frame_count, :int32, 15
        optional :gop_duration, :message, 16, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.video.transcoder.v1beta1.AudioStream" do
      optional :codec, :string, 1
      optional :bitrate_bps, :int32, 2
      optional :channel_count, :int32, 3
      repeated :channel_layout, :string, 4
      repeated :mapping, :message, 5, "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom"
      optional :sample_rate_hertz, :int32, 6
    end
    add_message "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom" do
      optional :key, :string, 1
      repeated :channels, :message, 2, "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel"
    end
    add_message "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel" do
      repeated :inputs, :message, 2, "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput"
    end
    add_message "google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput" do
      optional :key, :string, 1
      optional :track, :int32, 2
      optional :channel, :int32, 3
      optional :gain_db, :double, 4
    end
    add_message "google.cloud.video.transcoder.v1beta1.TextStream" do
      optional :codec, :string, 1
      optional :language_code, :string, 2
      repeated :mapping, :message, 3, "google.cloud.video.transcoder.v1beta1.TextStream.TextAtom"
    end
    add_message "google.cloud.video.transcoder.v1beta1.TextStream.TextAtom" do
      optional :key, :string, 1
      repeated :inputs, :message, 2, "google.cloud.video.transcoder.v1beta1.TextStream.TextAtom.TextInput"
    end
    add_message "google.cloud.video.transcoder.v1beta1.TextStream.TextAtom.TextInput" do
      optional :key, :string, 1
      optional :track, :int32, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.SegmentSettings" do
      optional :segment_duration, :message, 1, "google.protobuf.Duration"
      optional :individual_segments, :bool, 3
    end
    add_message "google.cloud.video.transcoder.v1beta1.Encryption" do
      optional :key, :string, 1
      optional :iv, :string, 2
      oneof :encryption_mode do
        optional :aes_128, :message, 3, "google.cloud.video.transcoder.v1beta1.Encryption.Aes128Encryption"
        optional :sample_aes, :message, 4, "google.cloud.video.transcoder.v1beta1.Encryption.SampleAesEncryption"
        optional :mpeg_cenc, :message, 5, "google.cloud.video.transcoder.v1beta1.Encryption.MpegCommonEncryption"
      end
    end
    add_message "google.cloud.video.transcoder.v1beta1.Encryption.Aes128Encryption" do
      optional :key_uri, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1beta1.Encryption.SampleAesEncryption" do
      optional :key_uri, :string, 1
    end
    add_message "google.cloud.video.transcoder.v1beta1.Encryption.MpegCommonEncryption" do
      optional :key_id, :string, 1
      optional :scheme, :string, 2
    end
    add_message "google.cloud.video.transcoder.v1beta1.Progress" do
      optional :analyzed, :double, 1
      optional :encoded, :double, 2
      optional :uploaded, :double, 3
      optional :notified, :double, 4
    end
    add_message "google.cloud.video.transcoder.v1beta1.FailureDetail" do
      optional :description, :string, 1
    end
  end
end

module Google
  module Cloud
    module Video
      module Transcoder
        module V1beta1
          Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Job").msgclass
          Job::OriginUri = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Job.OriginUri").msgclass
          Job::ProcessingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Job.ProcessingState").enummodule
          JobTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.JobTemplate").msgclass
          JobConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.JobConfig").msgclass
          Input = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Input").msgclass
          Output = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Output").msgclass
          EditAtom = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.EditAtom").msgclass
          AdBreak = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.AdBreak").msgclass
          ElementaryStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.ElementaryStream").msgclass
          MuxStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.MuxStream").msgclass
          Manifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Manifest").msgclass
          Manifest::ManifestType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Manifest.ManifestType").enummodule
          PubsubDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PubsubDestination").msgclass
          SpriteSheet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.SpriteSheet").msgclass
          Overlay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay").msgclass
          Overlay::NormalizedCoordinate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.NormalizedCoordinate").msgclass
          Overlay::Image = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.Image").msgclass
          Overlay::AnimationStatic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.AnimationStatic").msgclass
          Overlay::AnimationFade = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.AnimationFade").msgclass
          Overlay::AnimationEnd = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.AnimationEnd").msgclass
          Overlay::Animation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.Animation").msgclass
          Overlay::FadeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Overlay.FadeType").enummodule
          PreprocessingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig").msgclass
          PreprocessingConfig::Color = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Color").msgclass
          PreprocessingConfig::Denoise = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Denoise").msgclass
          PreprocessingConfig::Deblock = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Deblock").msgclass
          PreprocessingConfig::Audio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Audio").msgclass
          PreprocessingConfig::Crop = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Crop").msgclass
          PreprocessingConfig::Pad = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.PreprocessingConfig.Pad").msgclass
          VideoStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.VideoStream").msgclass
          AudioStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.AudioStream").msgclass
          AudioStream::AudioAtom = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom").msgclass
          AudioStream::AudioAtom::AudioChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel").msgclass
          AudioStream::AudioAtom::AudioChannel::AudioChannelInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput").msgclass
          TextStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.TextStream").msgclass
          TextStream::TextAtom = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.TextStream.TextAtom").msgclass
          TextStream::TextAtom::TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.TextStream.TextAtom.TextInput").msgclass
          SegmentSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.SegmentSettings").msgclass
          Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Encryption").msgclass
          Encryption::Aes128Encryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Encryption.Aes128Encryption").msgclass
          Encryption::SampleAesEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Encryption.SampleAesEncryption").msgclass
          Encryption::MpegCommonEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Encryption.MpegCommonEncryption").msgclass
          Progress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.Progress").msgclass
          FailureDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.transcoder.v1beta1.FailureDetail").msgclass
        end
      end
    end
  end
end