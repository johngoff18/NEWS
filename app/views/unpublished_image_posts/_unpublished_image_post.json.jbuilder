json.extract! unpublished_image_post, :id, :title, :description, :thumbnail_url, :status, :comments, :created_at, :updated_at
json.url unpublished_image_post_url(unpublished_image_post, format: :json)
