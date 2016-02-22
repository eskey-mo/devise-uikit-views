require 'rails'
require 'devise_uikit_views_helper'
module DeviseUikitViews
  class Engine < ::Rails::Engine
  end

  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'rails-devise-uikit-views' do |app|
      DeviseUikitViews::Railtie.instance_eval do
        pattern = pattern_from app.config.i18n.available_locales

        files = Dir[File.join(File.dirname(__FILE__), '../locales', "#{pattern}.yml")]
        I18n.load_path.concat(files)

        ActionView::Base.send :include, DeviseUikitViewsHelper
      end
    end

    protected

    def self.pattern_from(args)
      array = Array(args || [])
      array.blank? ? '*' : "{#{array.join ','}}"
    end
  end
end
