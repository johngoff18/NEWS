json.extract! obituary, :id, :name, :death_date, :content, :created_at, :updated_at
json.url obituary_url(obituary, format: :json)
