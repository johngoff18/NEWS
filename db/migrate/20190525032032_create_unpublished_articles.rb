class CreateUnpublishedArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :unpublished_articles do |t|
      t.string :title
      t.text :content
      t.integer :status
      t.text :comments

      t.timestamps
    end
  end
end
