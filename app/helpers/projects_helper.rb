module ProjectsHelper
  def done(is_done)
    if is_done
      t(:done_task)
    else
      t(:not_done_task)
    end

  end
  def has_file(task)
    i = task.file.blank? ? t(:no_file) : link_to(t(:view_file), task.file)
  end
  def has_description(task)
    i=task.description.blank? ? t(:no_description) : task.description
  end
  def has_tags(task)
    i=!task.tags.blank? ? t(:no_tags) : task.tags.map(&:title).join(', ')
  end
end
