json.extract! article, :id, :title, :content, :views, :featured, :approved, :category_id, :author, :created_at, :updated_at
json.url article_url(article, format: :json)
