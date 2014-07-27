# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'specserv/version'

Gem::Specification.new do |spec|
  spec.name          = "specserv"
  spec.version       = Specserv::VERSION
  spec.authors       = ["Andy Brice"]
  spec.email         = ["mail@andybrice.net"]
  spec.summary       = %q{Test result server}
  spec.description   = %q{Dynamically serves test results via HTTP from any directory.}
  spec.homepage      = "http://github.com/andybrice/specserv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['specserv']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  
  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "rspec"
end