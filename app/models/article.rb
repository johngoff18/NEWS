

class Article < ApplicationRecord
  belongs_to :category
  has_one :author
  mount_uploader :thumbnail, ArticleThumbnailUploader
  
end
