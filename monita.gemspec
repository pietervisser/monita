# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monita/version'

Gem::Specification.new do |spec|
  spec.name          = "monita"
  spec.version       = Monita::VERSION
  spec.authors       = ["Pieter Visser"]
  spec.email         = ["pieter@greenonline.nl"]
  spec.description   = %q{Monitor background jobs in rails}
  spec.summary       = %q{Monitor background jobs in rails}
  spec.homepage      = "http://www.greenonline.nl"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 3.2"
  spec.add_dependency "haml-rails"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"
end
