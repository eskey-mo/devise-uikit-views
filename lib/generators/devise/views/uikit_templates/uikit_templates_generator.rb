module Devise
  module Views
    class UikitTemplatesGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../../../app/views', __FILE__)
      def copy_views
         directory("devise", Rails.root.join("app", "views", "devise"))
      end
    end
  end
end
