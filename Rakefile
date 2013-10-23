
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'yard'

RSpec::Core::RakeTask.new(:spec)

task :default => [:spec, :yard]

YARD::Rake::YardocTask.new
