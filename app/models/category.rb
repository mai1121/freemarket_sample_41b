class Category < ApplicationRecord
  has_many :items

  @@path_length_of_parents = 1
  @@path_length_to_childs = 2

  def self.get_parents_list
    return Category.where('length(path_to_root) = ?', @@path_length_of_parents)
  end

  def self.get_childs(parent_path)
    return Category.where('path_to_root like ?', "#{parent_path}%").where('length(path_to_root) = ?', parent_path.to_s.length + @@path_length_to_childs)
  end
end
