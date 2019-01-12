class AddUserIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :saler, foreign_key: { to_table: :users }
    add_reference :items, :buyer, foreign_key: { to_table: :users }
  end
end
