# Copyright 2023 Google, Inc
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

require "google/cloud/pubsub"

def publish_resume_publish topic_id:
  # [START pubsub_old_version_resume_publish_with_ordering_keys]
  # topic_id = "your-topic-id"

  pubsub = Google::Cloud::Pubsub.new

  # Start sending messages in one request once the size of all queued messages
  # reaches 1 MB or the number of queued messages reaches 20
  topic = pubsub.topic topic_id, async: {
    max_bytes:    1_000_000,
    max_messages: 20
  }
  topic.enable_message_ordering!
  10.times do |i|
    topic.publish_async "This is message ##{i}.",
                        ordering_key: "ordering-key" do |result|
      if result.succeeded?
        puts "Message ##{i} successfully published."
      else
        puts "Message ##{i} failed to publish"
        # Allow publishing to continue on "ordering-key" after processing the
        # failure.
        topic.resume_publish "ordering-key"
      end
    end
  end

  # Stop the async_publisher to send all queued messages immediately.
  topic.async_publisher.stop!
  # [END pubsub_old_version_resume_publish_with_ordering_keys]
end
