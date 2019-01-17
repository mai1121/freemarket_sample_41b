class ItemsController < ApplicationController

  before_action :authenticate_user!, only: [:purchase_top,:purchase]

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

  def purchase_top
    @item = Item.find(params[:id])
    @item_image = @item.item_images.first
  end

  def purchase
    @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']

    @purchase = Payjp::Charge.create(currency: 'jpy', amount: @item.price, card: params['payjpToken'] )
    @item.update(buyer_id: current_user.id)
    redirect_to root_path
  end

end
