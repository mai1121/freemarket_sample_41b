class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :saler, class_name: "User"
  validates :saler_id, presence: true

  has_many :item_images, dependent: :destroy
  accepts_nested_attributes_for :item_images, allow_destroy: true
  validates :item_images, length: { minimum: 1 }

  belongs_to :category

  belongs_to :brand, optional: true


  enum status: { unused: 1,  close_to_unused: 2,  no_noticeable_scratch_or_dirt: 3,  slightly_scratch_or_dirt: 4,  scratch_or_dirt: 5,  bad_condition: 6}

  enum delivery_fee_method: { shipping_included: 1, cash_on_delivery: 2  }

  enum days_to_ship:{
    shipped_within_1_to_2_days: 1,
    shipped_within_2_to_3_days: 2,
    shipped_within_4_to_7_days: 3
  }


  enum size: {
    XXS_or_less: 1,
    XXS_or_SS: 2,
    S: 3,
    M: 4,
    L: 5,
    XL_or_LL: 6,
    two_XL_or_three_L: 7,
    three_XL_or_four_L: 8,
    four_XL_or_five_L_or_more: 9,
    free: 10 
  }

  
  enum ships_from:{
    hokkaido: 1, aomori: 2, iwate: 3, miyagi: 4, akita: 5, yamagata: 6, fukushima: 7, ibaraki: 8,
    tochigi: 9, gunnma: 10, saitama: 11, chiba: 12, tokyo: 13, kanagawa: 14, nigata: 15, toyama: 16,
    ishikawa: 17, fukui: 18, yamanashi: 19, nagano: 20, gifu: 21, sizuoka: 22, aichi: 23 ,mie: 24,
    shiga: 25, kyoto: 26 ,osaka: 27 , hyogo: 28 ,nara: 29 ,wakayama: 30 ,tottori: 31,shimane: 32,
    okayama: 33, hiroshima: 34, yamaguchi: 35 , tokushima: 36, kagawa: 37 ,ehime: 38 ,kochi: 39, fukuoka: 40,
    saga: 41,nagasaki: 42, kumamoto: 43, oita: 44, miyazaki: 45, kagoshima: 46, okinawa: 47
  }

  
  enum delivery_method:{
    pending: 1,
    kuronekoyamato: 2,
    yu_pack: 3,
    yu_mail: 4
  }
end
