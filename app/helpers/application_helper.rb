module ApplicationHelper
  # Include it in the controllers (e.g. application_controller.rb)
  include Pagy::Backend

  # Include it in the helpers (e.g. application_helper.rb)
  include Pagy::Frontend
  def render_highlighted_title(title, search_phrase)
    if search_phrase.present? && title.present? && title.casecmp(search_phrase).zero?
      content_tag(:span, title, style:"color:yellow")
    else
      content_tag(:span, title, style:"color:white")
    end
  end
end
