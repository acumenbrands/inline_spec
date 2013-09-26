# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inline_spec/version'

Gem::Specification.new do |spec|
  spec.name          = "inline_spec"
  spec.version       = InlineSpec::VERSION
  spec.authors       = ["Acumen Workstation"]
  spec.email         = ["dev@acumenbrands.com"]
  spec.description   = %q{Execute spec from a ruby environment (like the console)}
  spec.summary       = %q{Execute spec from a ruby environment (like the console)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rspec"
end
