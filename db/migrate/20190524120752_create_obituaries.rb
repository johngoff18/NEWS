class CreateObituaries < ActiveRecord::Migration[5.2]
  def change
    create_table :obituaries do |t|
      t.string :name
      t.date :death_date
      t.text :content

      t.timestamps
    end
  end
end
