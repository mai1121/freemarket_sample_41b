class ChangeDatatypePhoneNumberOfUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :phone_number, :string, null:false
  end
end
