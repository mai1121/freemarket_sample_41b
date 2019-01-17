class ItemsController < ApplicationController

  before_action :authenticate_user!, only: [:purchase_top,:purchase]

  before_action :require_login, only: [:new, :create]

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
    @item_price = @item.price.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\1,').insert(0,'¥ ')
    @item_image = @item.item_images.first
  end

  def purchase
    @item = Item.find(params[:id])
    @token = params['payjpToken']

    if current_user.purchase(@item,@token)
      redirect_to root_path
    else
      new_user_session_path
    end
  end

  def new
    @item = Item.new
    @item_images = @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end

  private
  def require_login
    redirect_to new_user_session_url unless user_signed_in?
  end

  def item_params
    params.require(:item).permit(
      :name,
      :description,
      :category_id,
      :size,
      :status,
      :delivery_fee_method,
      :delivery_method,
      :ships_from,
      :days_to_ship,
      :price,
      item_images_attributes:[:image]
      ).merge(saler_id: current_user.id).merge(brand_id: set_brand_id)
  end

  def set_brand_id
    Brand.where('name = ?', params[:brand_name])
  end

end
