class Brand < ApplicationRecord
  has_many :items

  enum recommend_item: ['CHANEL','NIKE','LOUISVUITTON','Supreme','Adidas','brandslist']

  def self.find_categories(items)
    post_category = []
    items.each do |item|
      category = item.category
      post_category << category
    end
    return post_category.uniq
  end



end
