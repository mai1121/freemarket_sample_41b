class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true

  has_many :item_images
  validates :item_images, length: { minimum: 1 }

  belongs_to :category

  belongs_to :brand, optional: true

end
