module TasksHelper
  def render_filtered_tasks(tasks, tasks_to_show)
    return tasks if tasks_to_show == 'all'

    if tasks_to_show == 'done'
      tasks.select { |task| task.is_done }
    elsif tasks_to_show == 'not_done'
      tasks.reject { |task| task.is_done }
    else
      tasks
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
