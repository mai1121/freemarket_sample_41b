class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  belongs_to :buyer, class_name: "User"
  belongs_to :saler, class_name: "User"
  validates :saler_id, presence: true

  has_many :item_images
  validates :item_images, length: { minimum: 1 }

  belongs_to :category

  belongs_to :brand, optional: true

end
