class CreateCartedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :carted_items do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :quantity
      t.integer :order_id
      t.string :status

      t.timestamps
    end
  end
end
