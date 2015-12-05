# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'commandment/version'

Gem::Specification.new do |spec|
  spec.name          = "commandment"
  spec.version       = Commandment::VERSION
  spec.authors       = ["dthtvwls"]
  spec.email         = ["dthtvwls@users.noreply.github.com"]

  spec.summary       = "Finally, a ruby shell command runner that just does the right thing!"
  spec.homepage      = "https://github.com/dthtvwls/commandment"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
