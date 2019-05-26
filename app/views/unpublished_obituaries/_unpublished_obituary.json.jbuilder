json.extract! unpublished_obituary, :id, :name, :death_date, :thumbnail_url, :status, :comments, :created_at, :updated_at
json.url unpublished_obituary_url(unpublished_obituary, format: :json)
