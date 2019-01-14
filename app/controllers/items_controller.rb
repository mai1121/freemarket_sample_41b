class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end

  def show
    @item = Item.find(params[:id])
    
    @item_images = @item.item_images
    @saler = @item.saler
    @category = @item.category
    @parent_category = @category.parent
    @grandparent_category = @category.root
    @brand = @item.brand
  end
end
