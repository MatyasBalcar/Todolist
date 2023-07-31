json.extract! task, :id, :title, :description, :is_done, :user_id, :project_id, :own_id, :created_at, :updated_at
json.url task_url(task, format: :json)
