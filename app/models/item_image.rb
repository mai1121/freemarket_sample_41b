class ItemImage < ApplicationRecord
  belongs_to :item, inverse_of: :item_images
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
