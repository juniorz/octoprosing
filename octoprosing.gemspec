# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octoprosing/version'

Gem::Specification.new do |gem|
  gem.name          = "octoprosing"
  gem.version       = Octoprosing::VERSION
  gem.authors       = ["Reinaldo Junior"]
  gem.email         = ["juniorz@gmail.com"]
  gem.description   = %q{Prosing with an octopus}
  gem.summary       = %q{Integrates octopress and prose.io}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'jekyll', '~> 0.12'
end
