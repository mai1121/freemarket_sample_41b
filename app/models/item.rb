class Item < ApplicationRecord
  attr_accessor :main_image

  has_many :item_images
  validates :name, presence: true
  validates :price, presence: true
  validates :item_images, length: { minimum: 1 }

end
