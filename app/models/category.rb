class Category < ApplicationRecord
  has_many :items
  has_ancestry

  def self.items(selected_category,descendants_categories)
    post_items = []
    items = selected_category.items
    
    post_items = post_items|items

    descendants_categories.each do |descendants_category|
      items = descendants_category.items
      post_items = post_items|items
    end

    return post_items
  end

end
