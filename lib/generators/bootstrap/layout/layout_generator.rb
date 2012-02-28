require 'rails/generators'

module Bootstrap
  module Generators
    class LayoutGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator generates layout file with navigation."
      argument :layout_name, :type => :string, :default => "application"
      argument :layout_type, :type => :string, :default => "fixed",
               :banner => "*fixed or fluid"

      attr_reader :app_name, :container_class

      def generate_layout
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        @container_class = layout_type == "fluid" ? "container-fluid" : "container"
        template "layout.html.haml", "app/views/layouts/#{layout_name}.html.haml"
        if File.exists?("app/views/layouts/#{layout_name}.html.erb")
          puts "Remove app/views/layouts/#{layout_name}.html.erb to make haml-layout work."
        end
      end
    end
  end
end
