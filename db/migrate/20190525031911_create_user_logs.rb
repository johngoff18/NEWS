class CreateUserLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_logs do |t|
      t.string :user
      t.string :url

      t.timestamps
    end
  end
end
