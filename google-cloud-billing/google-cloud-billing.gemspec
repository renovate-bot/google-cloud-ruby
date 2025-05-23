# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/billing/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-billing"
  gem.version       = Google::Cloud::Billing::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Allows developers to manage billing for their Google Cloud Platform projects programmatically."
  gem.summary       = "API Client library for the Billing API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-billing-v1", ">= 0.17", "< 2.a"
  gem.add_dependency "google-cloud-core", "~> 1.6"
end
