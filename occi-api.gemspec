# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'occi/api/version'

Gem::Specification.new do |gem|
  gem.name          = "occi-api"
  gem.version       = Occi::Api::VERSION
  gem.authors       = ["Florian Feldhaus","Piotr Kasprzak", "Boris Parak"]
  gem.email         = ["florian.feldhaus@gwdg.de", "piotr.kasprzak@gwdg.de", "xparak@mail.muni.cz"]
  gem.description   = %q{OCCI is a collection of classes to simplify the implementation of the Open Cloud Computing API in Ruby}
  gem.summary       = %q{OCCI toolkit}
  gem.homepage      = 'https://github.com/gwdg/rOCCI-api'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.extensions    = 'ext/mkrf_conf.rb'

  gem.add_dependency 'occi-core'
  gem.add_dependency 'httparty'
  gem.add_dependency 'amqp'
  gem.add_dependency 'json'

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "builder"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "yard"
  gem.add_development_dependency "yard-sinatra"
  gem.add_development_dependency "yard-rspec"
  gem.add_development_dependency "yard-cucumber"
  gem.add_development_dependency "rspec-http"
  gem.add_development_dependency "webmock", "~>1.9.3"

  gem.required_ruby_version     = ">= 1.8.7"
end
