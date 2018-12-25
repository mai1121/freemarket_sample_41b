class Item < ApplicationRecord
  attr_accessor :main_image
  has_many :item_images

  def set_main_image(image)
    self.main_image = image
  end
end
