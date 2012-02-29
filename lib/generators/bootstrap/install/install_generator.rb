require 'rails/generators'

module Bootstrap
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Twitter Bootstrap to Asset Pipeline"

      def add_stylesheets
        ext = Rails.application.config.sass.preferred_syntax.to_s
        if File.exist?("app/assets/stylesheets/application.css.#{ext}")
          insert_into_file "app/assets/stylesheets/application.css.#{ext}", %Q{@import "twitter/bootstrap"\n}, :before => "@import"
        else
          copy_file "application.css.#{ext}", "app/assets/stylesheets/application.css.#{ext}"
        end

        if File.exist?("app/assets/stylesheets/application.css")
          log "Please remove 'app/assets/stylesheets/application.css' to make #{ext}-file work."
        end
      end

      def add_coffeescripts
        if File.exist?("app/assets/javascripts/application.js.coffee")
          insert_into_file "app/assets/javascripts/application.js.coffee", "//= require twitter/bootstrap\n", :after => "jquery_ujs\n"
        else
          copy_file "application.js.coffee", "app/assets/javascripts/application.js.coffee"
        end

        if File.exist?("app/assets/javascripts/application.js")
          log "Please remove 'app/assets/javascripts/application.js' to make coffee-file work."
        end
      end

    end
  end
end
