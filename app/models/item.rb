class Item < ApplicationRecord

  has_many :item_images
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :item_images, length: { minimum: 1 }

end
