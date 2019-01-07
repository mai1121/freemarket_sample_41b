class AddUserIdToUserAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_addresses, :user, foreign_key: true
  end
end
  