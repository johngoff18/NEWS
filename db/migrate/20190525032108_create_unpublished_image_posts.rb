class CreateUnpublishedImagePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :unpublished_image_posts do |t|
      t.string :title
      t.text :description
      t.string :thumbnail_url
      t.integer :status
      t.text :comments

      t.timestamps
    end
  end
end
