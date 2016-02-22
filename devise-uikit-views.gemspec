# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "devise-uikit-views"
  spec.version       = DeviseUikitViews::VERSION
  spec.authors       = ["eskey"]
  spec.email         = ["esplants@outlook.com"]

  spec.summary       = %q{Devise UIkit views with i18n support.}
  spec.description   = %q{Devise UIkit views with i18n support.}
  spec.homepage      = ""

  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
