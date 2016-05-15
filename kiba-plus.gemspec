# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kiba/plus/version'

Gem::Specification.new do |spec|
  spec.name          = "kiba-plus"
  spec.version       = Kiba::Plus::VERSION
  spec.authors       = ["Hooopo"]
  spec.email         = ["hoooopo@gmail.com"]

  spec.summary       = %q{kiba plus}
  spec.description   = %q{kiba plus}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "kiba", "~> 0.6"
  spec.add_runtime_dependency "mysql2", "~> 0.4"
  spec.add_runtime_dependency "pg", "~> 0.18"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end