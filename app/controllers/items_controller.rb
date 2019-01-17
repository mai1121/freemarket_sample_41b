class ItemsController < ApplicationController
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

  def new
    @item = Item.new
    @item_images = @item.item_images.build
    @item_image_length = "have-item-0"
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end

  def edit
    @item = Item.includes(:item_images).find(params[:id])
    @item_images = @item.item_images
    @parent_category = Category.find(@item.category_id).parent
    @root_category = @parent_category.parent
    @item_image_length = "have-item#{@item.item_images.length}"
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
