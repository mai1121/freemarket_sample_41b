class Brand < ApplicationRecord
  has_many :items

  enum recommend_items: ['シャネル','ナイキ','ルイ　ヴィトン','シュプリーム','アディダス','ブランド一覧']
end
