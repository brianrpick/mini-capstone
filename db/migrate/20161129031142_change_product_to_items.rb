class ChangeProductToItems < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :product_id, :integer
    add_column :orders, :item_id, :integer
  end
end
