# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'lifted_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = 'lifted_deploy'
  spec.version       = LiftedDeploy::VERSION
  spec.authors       = ['Lee Dohm', 'Lifted Studios']
  spec.email         = ['lee@liftedstudios.com']
  spec.description   = %q{A simple deploy Rake task for Rails on Heroku.}
  spec.summary       = %q{A simple deploy Rake task.}
  spec.homepage      = 'https://github.com/lifted-studios/lifted_deploy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
