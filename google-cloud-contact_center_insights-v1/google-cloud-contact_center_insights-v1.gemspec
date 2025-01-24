# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/contact_center_insights/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-contact_center_insights-v1"
  gem.version       = Google::Cloud::ContactCenterInsights::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Contact Center AI Insights helps users detect and visualize patterns in their contact center data. Understanding conversational data drives business value, improves operational efficiency, and provides a voice for customer feedback. Note that google-cloud-contact_center_insights-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-contact_center_insights instead. See the readme for more details."
  gem.summary       = "API Client library for the Contact Center AI Insights V1 API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.7"

  gem.add_dependency "gapic-common", ">= 0.25.0", "< 2.a"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
  gem.add_dependency "google-iam-v1", ">= 0.7", "< 2.a"
end
