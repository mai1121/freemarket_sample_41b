class RemovePathToRootFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :path_to_root, :string
  end
end
