json.extract! user_log, :id, :user, :url, :created_at, :updated_at
json.url user_log_url(user_log, format: :json)
