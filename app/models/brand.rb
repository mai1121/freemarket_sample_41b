class Brand < ApplicationRecord
  has_many :items

  enum recommend_item: ['CHANEL','NIKE','LOUISVUITTON','Supreme','Adidas']

  def self.indicate_categories(items)
    indicate_category = []
    items.each do |item|
      category = item.category
      indicate_category << category
    end
    return indicate_category.uniq
  end

  def self.indicate_items(brands)
    indicate_items = []
    brands.each do |brand|
      items = brand.items
      indicate_items = indicate_items | items
    end
    return indicate_items
  end



end
