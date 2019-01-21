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


  def self.brand_lists(brands,initial_strings)
    brand_lists = []
    initial_strings.each do |initial_string|
      brand_list = Brand.where('name LIKE(?)',"#{initial_string}%")
      brand_lists << brand_list
    end
    return brand_lists
  end
end
