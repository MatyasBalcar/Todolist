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
end
