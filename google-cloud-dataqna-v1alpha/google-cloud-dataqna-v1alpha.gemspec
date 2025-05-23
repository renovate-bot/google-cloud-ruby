# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/dataqna/v1alpha/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-dataqna-v1alpha"
  gem.version       = Google::Cloud::DataQnA::V1alpha::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Data QnA is a natural language question and answer service for BigQuery data. Note that google-cloud-dataqna-v1alpha is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-dataqna instead. See the readme for more details."
  gem.summary       = "Data QnA is a natural language question and answer service for BigQuery data."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
