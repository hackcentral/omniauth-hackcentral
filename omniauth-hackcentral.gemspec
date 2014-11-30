# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-hackcentral/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "omniauth-hackcentral"
  gem.version     = OmniAuth::HackCentral::VERSION
  gem.authors     = ["Jon Moss"]
  gem.email       = ["me@jonathanmoss.me"]
  gem.homepage    = "https://github.com/hackcentral/omniauth-hackcentral"
  gem.summary     = %q{OmniAuth strategy for HackCentral}
  gem.description = %q{OmniAuth strategy for HackCentral, see https://github.com/hackcentral/omniauth-hackcentral for examples and more information.}
  gem.license = 'MIT'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
