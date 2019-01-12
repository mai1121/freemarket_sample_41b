class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end

  def show
    # アイテム
    @item = Item.find(params[:id])
    # アイテム画像
    @item_images = @item.item_images
    # 出品者
    @saler = @item.saler
    ##saler_idカラムで取得可能
    # カテゴリー
    @category = @item.category
    @parent_category = @category.parent
    @grandparent_category = @category.root
    ## カテゴリーidカラムで取得可能
    # ブランド
    @brand = @item.brand
    ## ブランドidカラムで取得可能
  end
end
