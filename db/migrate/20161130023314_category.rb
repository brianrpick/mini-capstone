class Category < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :name, :string
    remove_column :categories, :item_id, :integer
    remove_column :categories, :category_id, :integer
  end
end
