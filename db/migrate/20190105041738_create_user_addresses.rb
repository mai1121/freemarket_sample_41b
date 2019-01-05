class CreateUserAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_addresses do |t|
      t.integer :postal_code
      t.integer :prefecture, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building_name
      t.integer :birth_year, null: false
      t.integer :birth_month, null: false
      t.integer :birth_day, null: false
      t.timestamps
    end
  end
end
