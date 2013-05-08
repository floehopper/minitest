# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest'

Gem::Specification.new do |spec|
  spec.name          = "minitest"
  spec.version       = Minitest::Unit::VERSION
  spec.authors       = ["James Mead"]
  spec.email         = ["james@floehopper.org"]
  spec.description   = %q{description}
  spec.summary       = %q{summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "hoe"
end
