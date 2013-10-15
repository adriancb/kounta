# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kounta/version'

Gem::Specification.new do |spec|
  spec.name          = "kounta"
  spec.version       = Kounta::VERSION
  spec.authors       = ["Samuel Richardson"]
  spec.email         = ["sam@richardson.co.nz"]
  spec.description   = %q{Library for accessing Kountas RESTful API}
  spec.summary       = %q{Will write this}
  spec.homepage      = "http://www.richardson.co.nz"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "simplecov", "0.7.1"
  spec.add_development_dependency "webmock", "1.13.0"

  spec.add_dependency "oj", "~> 2.1.4"
  spec.add_dependency "hashie", "~> 2.0.5"
  spec.add_dependency "oauth2", "0.9.2"
  spec.add_dependency "pry", "0.9.12.2"
  spec.add_dependency "yell", "1.5.1"
end
