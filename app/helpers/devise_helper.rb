module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, '<i class="icon-exclamation-sign"></i>'.html_safe + msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
      <div class="error_explanation alert alert-danger">
        <h2>#{sentence}</h2>
        <ul class='icons'>#{messages}</ul>
      </div>
    HTML
    
    html.html_safe
  end
end