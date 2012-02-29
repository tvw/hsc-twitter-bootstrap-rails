#!/usr/bin/env rake
require "bundler/gem_tasks"

task :default do
  sh %{bundle install}
  sh %{rake build}
  sh %{rake install}
  rm_rf "pkg"
end
