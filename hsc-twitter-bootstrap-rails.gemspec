# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hsc-twitter-bootstrap/rails/version"

Gem::Specification.new do |s|
  s.name = "hsc-twitter-bootstrap-rails"
  s.version = HSCTwitterBootstrap::Rails::VERSION::STRING
  s.platform = Gem::Platform::RUBY
  s.authors = ["Thomas Volkmar Worm"]
  s.email = ["tvw@s4r.de"]
  s.homepage = "https://github.com/tvw/hsc-twitter-bootstrap-rails"
  s.summary = %q{Bootstrap CSS toolkit for Rails 3.1 Asset Pipeline using Haml, Sass and Coffeescript}
  s.description = %q{hsc-twitter-bootstrap-rails project integrates Bootstrap CSS toolkit for Rails 3.1 Asset Pipeline using Haml, Sass and Coffeescript}

  s.rubyforge_project = "hsc-twitter-bootstrap-rails"
  s.files = Dir["lib/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'railties', '>= 3.1'
  s.add_dependency 'actionpack', '>= 3.1'
  s.add_runtime_dependency 'sass-twitter-bootstrap-rails', '~> 1.0'
  s.add_development_dependency 'rails', '>= 3.1'
end
