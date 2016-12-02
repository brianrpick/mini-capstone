class RemoveProductIdandQuantity < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :item_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
