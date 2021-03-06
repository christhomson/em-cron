# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'em/cron/version'

Gem::Specification.new do |spec|
  spec.name          = "em-cron"
  spec.version       = EM::Cron::VERSION
  spec.authors       = ["Dylan Griffith"]
  spec.email         = ["dyl.griffith@gmail.com"]

  spec.summary       = %q{Simple Eventmachine library for running code on a schedule using the crontab syntax.}
  spec.description   = %q{Simple Eventmachine library for running code on a schedule using the crontab syntax.}
  spec.homepage      = "https://github.com/dgvz/em-cron"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "parse-cron", "~> 0.1"
  spec.add_runtime_dependency "eventmachine"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
