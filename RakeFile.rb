require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:ready) do |t|
  t.cucumber_opts = '--profile ready'
end

Cucumber::Rake::Task.new(:debug) do |t|
  t.cucumber_opts = '--profile debug'
end

task :default => :ready