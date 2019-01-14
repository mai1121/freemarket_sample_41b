class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :saler, class_name: "User"
  validates :saler_id, presence: true

  has_many :item_images
  validates :item_images, length: { minimum: 1 }

  belongs_to :category

  belongs_to :brand, optional: true


  enum status: { 新品、未使用: 1,  未使用に近い: 2,  目立った傷や汚れなし: 3,  やや傷や汚れあり: 4,  傷や汚れあり: 5,  全体的に状態が悪い: 6}

  enum delivery_fee_method: { "送料込み(出品者負担)" => 1, "着払い(購入者負担)" => 2  }

  enum days_to_ship:{
    "1~2日で発送" => 1,
    "2~3日で発送" => 2,
    "4~7日で発送" => 3
  }

  # 追加予定
  enum size: {
    "XXS以下" => 1,
    "XS(SS)" => 2
  }

  # 追加予定
  enum ships_from:{
    北海道: 1, 青森: 2
  }

  # 追加予定
  enum delivery_method:{
    クロネコヤマト: 1,
    ゆうメール: 2
  }
end
