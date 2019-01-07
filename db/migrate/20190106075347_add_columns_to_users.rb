class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :postal_code, :string
    add_column :users, :prefecture, :string, null:false
    add_column :users, :city, :string, null:false
    add_column :users, :address, :string, null:false
    add_column :users, :building_name, :string, null:false
    add_column :users, :birth_year, :integer, null:false
    add_column :users, :birth_month, :integer, null:false
    add_column :users, :birth_day, :integer, null:false
  end
end
