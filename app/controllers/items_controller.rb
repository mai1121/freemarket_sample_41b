class ItemsController < ApplicationController
  def index
    @items = Item.includes(:item_images).all
    #トップページ用のメイン画像を個々itemに設定
    #item_imageのidが一番若いものを設定
    @items.each do |item|
      item.set_main_image(item.item_images[0])
    end
  end
end
