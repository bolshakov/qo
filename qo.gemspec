# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "qo/version"

Gem::Specification.new do |spec|
  spec.name          = "qo"
  spec.version       = Qo::VERSION
  spec.authors       = ["Brandon Weaver"]
  spec.email         = ["keystonelemur@gmail.com"]

  spec.summary       = %q{Qo is a querying library for Ruby pattern matching}
  spec.homepage      = "https://www.github.com/baweaver/qo"
  spec.license       = "MIT"

  spec.post_install_message = <<~MESSAGE
    Qo 0.99.0 is the last version of Qo under the official name "Qo". After this
    version, Qo will be adopted into dry-rb (https://dry-rb.org/) as the new
    dry-matcher.

    As I'm fond of the name, "Qo" will remain an alias for "Dry::Matcher"
    so you can use it as you have before. Qo v0.99.0 and Dry Matcher v1.0.0
    will be directly compatible with eachother, and semantic versioning will
    take over from there.
  MESSAGE

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "benchmark-ips"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "dry-matcher"

  spec.add_runtime_dependency "any", '0.1.0'
end
