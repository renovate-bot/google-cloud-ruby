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

def detach_subscription subscription_id:
  # [START pubsub_old_version_detach_subscription]
  # subscription_id = "your-subscription-id"

  pubsub = Google::Cloud::Pubsub.new

  subscription = pubsub.subscription subscription_id
  subscription.detach

  sleep 120
  subscription.reload!
  if subscription.detached?
    puts "Subscription is detached."
  else
    puts "Subscription is NOT detached."
  end
  # [END pubsub_old_version_detach_subscription]
end
