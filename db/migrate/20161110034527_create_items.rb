class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :product_type
      t.timestamps
    end
  end
end
