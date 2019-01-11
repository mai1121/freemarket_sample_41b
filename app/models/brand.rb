class Brand < ApplicationRecord
  has_many :items

  enum recommend_item: ['CHANEL','NIKE','LOUISVUITTON','Supreme','Adidas','brandslist']
end
