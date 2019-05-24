class CreateImagePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :image_posts do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
