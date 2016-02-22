# -*- encoding : utf-8 -*-

module DeviseUikitViewsHelper
  def uikit_devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="uk-alert uk-alert-danger" data-uk-alert>
      <a href="" class="uk-alert-close uk-close"></a>
      <h5>#{sentence}</h5>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end
