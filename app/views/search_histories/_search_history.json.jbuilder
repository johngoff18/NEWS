json.extract! search_history, :id, :search_term, :created_at, :updated_at
json.url search_history_url(search_history, format: :json)
