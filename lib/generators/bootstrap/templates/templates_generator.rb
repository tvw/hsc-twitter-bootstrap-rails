require 'rails/generators'

module Bootstrap
  module Generators
    class TemplatesGenerator < ::Rails::Generators::Base

      def self.user_source_root
        Rails.root.join("lib", "generators", "bootstrap", "themed", "templates")
      end

      source_root File.expand_path('../../themed/templates', __FILE__)
      desc "This generator installs Twitter Bootstrap Themed templates to #{user_source_root}."

      def add_templates

        views = {
          "index.html.haml"   => File.join(self.class.user_source_root, "index.html.haml"),
          "new.html.haml"     => File.join(self.class.user_source_root, "new.html.haml"),
          "edit.html.haml"    => File.join(self.class.user_source_root, "edit.html.haml"),
          "_form.html.haml"   => File.join(self.class.user_source_root, "_form.html.haml"),
          "show.html.haml"    => File.join(self.class.user_source_root, "show.html.haml")}

        views.each do |template_name, output_path|
          copy_file template_name, output_path
        end
      end

    end
  end
end
