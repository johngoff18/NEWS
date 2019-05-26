json.extract! unpublished_article, :id, :title, :content, :status, :comments, :created_at, :updated_at
json.url unpublished_article_url(unpublished_article, format: :json)
