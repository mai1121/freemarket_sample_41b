class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
    @blands = ['シャネル','ナイキ','ルイ　ヴィトン','シュプリーム','アディダス','ブランド一覧']
    
  end
end
