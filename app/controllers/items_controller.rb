class ItemsController < ApplicationController

  before_action :authenticate_user!, only: [:purchase_top,:purchase]

  before_action :require_login, only: [:new, :create]

  before_action :find_item, only: [:purchase_top, :purchase, :update]

  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
    @brand_items = @items.where.not(brand_id: nil)
  end

  def show
    set_item
    set_category
    @saler = @item.saler
    @brand = @item.brand
  end

  def purchase_top
    @item_image = @item.item_images.first
  end

  def purchase
    @token = params['payjpToken']

    if current_user.purchase(@item,@token)
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end

  def update
    if @item.update(item_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def new
    @item = Item.new
    @item_images = @item.item_images.build
    @item_image_length = "have-item0"
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  def edit
    set_item
    @item_images.each do |item_image|
      item_image.image.cache!
    end
    set_category
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
      item_images_attributes:[:id, :image,:image_cache]
      ).merge(saler_id: current_user.id).merge(brand_id: set_brand_id)
  end

  def set_brand_id
    Brand.where('name = ?', params[:brand_name])
  end

  def set_item
    @item = Item.includes(:item_images).find(params[:id])
    @item_images = @item.item_images
  end

  def set_category
    @category = @item.category
    @parent_category = @category.parent
    @grandparent_category = @category.root
  end

  def find_item
    @item = Item.find(params[:id])
  end

end
