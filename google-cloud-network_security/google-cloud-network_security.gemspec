# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/network_security/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-network_security"
  gem.version       = Google::Cloud::NetworkSecurity::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "The client library for the Google Network Security V1beta1 API."
  gem.summary       = "API Client library for the Network Security API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-network_security-v1beta1", ">= 0.7", "< 2.a"
end
