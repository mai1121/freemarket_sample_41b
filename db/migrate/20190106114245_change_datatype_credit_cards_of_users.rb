class ChangeDatatypeCreditCardsOfUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :credit_card_num, :string
    change_column :users, :credit_card_expiration_month, :string
    change_column :users, :credit_card_expiration_year, :string
    change_column :users, :credit_card_security_num, :string
  end
end
