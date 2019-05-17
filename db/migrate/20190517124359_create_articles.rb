class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :featured
      t.boolean :approved
      t.references :category, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
