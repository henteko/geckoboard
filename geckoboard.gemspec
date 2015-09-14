# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geckoboard/version'

Gem::Specification.new do |spec|
  spec.name          = "geckoboard"
  spec.version       = Geckoboard::VERSION
  spec.authors       = ["henteko"]
  spec.email         = ["henteko07@gmail.com"]

  spec.summary       = "Geckoboard push api lib"
  spec.description   = "Geckoboard push api lib"
  spec.homepage      = "https://github.com/henteko/geckoboard"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

