class ItemImage < ApplicationRecord
  belongs_to :item, inverse_of: :item_images
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
params = {item: {name: "大根です",description: "大根",status: "slightly_scratch_or_dirt",delivery_fee_method: "cash_on_delivery",delivery_method: "kuronekoyamato",ships_from: "miyagi",days_to_ship: "shipped_within_1_to_2_days",price: "4000", saler_id: 2,category_id: 4,item_images_attributes: [{image: File.open("#{Rails.root}/public/images/item3_punpun.jpeg")}]}
}
