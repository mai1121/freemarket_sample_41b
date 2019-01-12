class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end

  def show
    出品者 userモデルよりsaler_id
    カテゴリー
    ブランド
    いいね！数
  end
end
