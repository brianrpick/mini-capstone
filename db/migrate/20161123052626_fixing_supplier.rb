class FixingSupplier < ActiveRecord::Migration[5.0]
  def change
    rename_column :items, :supplier, :supplier_id
  end
end
