class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.text :body
      t.integer :user_id
      t.boolean :completed

      t.timestamps
    end
  end
end
