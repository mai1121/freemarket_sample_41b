class DropBrands < ActiveRecord::Migration[5.0]
  def change
    drop_table :brands
  end
end
