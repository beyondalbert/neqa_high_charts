# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'neqa_high_charts/version'

Gem::Specification.new do |spec|
  spec.name          = "neqa_high_charts"
  spec.version       = NeqaHighCharts::VERSION
  spec.authors       = ["beyondalbert"]
  spec.email         = ["beyondalbert@gmail.com"]
  spec.description   = %q{easy high chart generate gem}
  spec.summary       = %q{easy high chart generate gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
