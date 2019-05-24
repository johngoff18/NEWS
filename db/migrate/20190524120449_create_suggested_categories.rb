class CreateSuggestedCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :suggested_categories do |t|
      t.string :category
      t.boolean :approved

      t.timestamps
    end
  end
end
