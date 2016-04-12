# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vesta/version'

Gem::Specification.new do |spec|
  spec.name          = "vesta"
  spec.version       = Vesta::VERSION
  spec.authors       = ["Peter Boriskin"]
  spec.email         = ["x66w@ya.ru"]

  spec.summary       = %q{Control your Vesta CP.}
  spec.description   = %q{Gem for contol Vesta CP via Ruby}
  spec.homepage      = "https://github.com/sanata-/vesta"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

end
