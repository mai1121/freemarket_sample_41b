class AddcolumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string, null:false
    add_column :users, :last_name, :string, null:false
    add_column :users, :first_name_kana, :string, null:false
    add_column :users, :last_name_kana, :string, null:false
    add_column :users, :nickname, :string, null:false
    add_column :users, :phone_number, :integer, null:false
    add_column :users, :credit_card_num, :integer, null:false
    add_column :users, :credit_card_expiration_month, :integer, null:false
    add_column :users, :credit_card_expiration_year, :integer, null:false
    add_column :users, :credit_card_security_num, :integer, null:false
    add_column :users, :profile, :text
    add_column :users, :icon_image, :string
  end
end
