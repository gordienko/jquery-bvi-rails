# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery/bvi/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'jquery-bvi-jquery_bvi_rails'
  spec.version       = Jquery::Bvi::Rails::VERSION
  spec.authors       = ['Alexey Gordienko']
  spec.email         = ['alx@anadyr.org']
  spec.description   = %q{Button visually impaired Jquery plugin for Ruby on Rails asset pipeline}
  spec.summary       = %q{Button visually impaired Jquery plugin for Ruby on Rails asset pipeline}
  spec.homepage      = 'https://github.com/gordienko/jquery-bvi-jquery_bvi_rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
