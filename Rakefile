#!/usr/bin/env rake

require 'rubygems'
require 'bundler'
require 'bundler/gem_tasks'
require 'rake'
require 'rdoc/task'
require 'rake/clean'
require 'rubygems/package_task'
require 'rspec/core/rake_task'

include Rake::DSL

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

task :default => [:spec]
