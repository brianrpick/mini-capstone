class ExerciseUpdates < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :description, :text
    change_column :items, :price, 'decimal USING CAST(price AS decimal)', precision: 9, scale: 2
    add_column :items, :stock, :boolean
  end
end
