module ApplicationHelper

  include Pagy::Frontend
  def render_highlighted_title(combined_result, search_phrase)
    title = combined_result.title
    if search_phrase.present? && title.present? && title.casecmp(search_phrase).zero?
      content_tag(:span, title, style:"color:yellow")

      link_path = if combined_result.is_a?(Project)
                    project_path(combined_result)
                  elsif combined_result.is_a?(Task)
                    task_path(combined_result)
                  elsif combined_result.is_a?(Tag)
                    tag_path(combined_result)
                  end
      link_to(raw(content_tag(:span, title, style:"color:yellow")), link_path)
    else
      content_tag(:span, title, style:"color:white")

    end
  end
end
