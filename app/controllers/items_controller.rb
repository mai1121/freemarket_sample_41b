class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end
end
