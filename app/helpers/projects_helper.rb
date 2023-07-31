module ProjectsHelper
  def done(is_done)
    if is_done
      t(:done_task)
    else
      t(:not_done_task)
    end
  end
end
