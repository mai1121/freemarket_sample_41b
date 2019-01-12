class ItemsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    Item.create(item_params)
  end

  private
    def require_login
      redirect_to new_user_session_url unless user_signed_in?
    end

    def item_params
      params.require(:item).permit( :name, :description,  :category_id, :size, :status, :delivery_fee_method, :delivery_method, :ships_from, :days_to_ship, :price, item_images_attributes: [:image,]).merge(saler_id: current_user.id).merge(brand_id: set_brand_id)
    end

    def set_brand_id
      Brand.where('name = ?', params[:brand_id])
    end
end
