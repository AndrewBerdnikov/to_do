class AddCategoryToTask < ActiveRecord::Migration[7.2]
  def change
    add_column :tasks, :category, :string
  end
end
