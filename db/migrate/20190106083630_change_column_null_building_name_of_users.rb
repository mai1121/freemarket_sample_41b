class ChangeColumnNullBuildingNameOfUsers < ActiveRecord::Migration[5.0]
  def up
    change_column_null :users, :building_name, true
  end
  def down
    change_column_null :users, :building_name, false
  end
end
