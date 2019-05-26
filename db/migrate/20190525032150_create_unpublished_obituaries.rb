class CreateUnpublishedObituaries < ActiveRecord::Migration[5.2]
  def change
    create_table :unpublished_obituaries do |t|
      t.string :name
      t.text :content
      t.date :death_date
      t.string :thumbnail_url
      t.integer :status
      t.text :comments

      t.timestamps
    end
  end
end
