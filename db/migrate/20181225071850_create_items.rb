class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.integer :size
      t.integer :status
      t.integer :delivery_fee_method
      t.integer :delivery_method
      t.integer :ships_from
      t.integer :days_to_ship
      t.integer :price, null: false
#      t.references :category, foreign_key: true
#      t.references :brand, foreign_key: true
#      t.references :saler, class_name: "User", foreign_key: true, null: false
#      t.references :buyer, class_name: "User", foreign_key: true, null: false
#      t.timestamps
    end
  end
end

