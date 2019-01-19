class ItemsController < ApplicationController

  before_action :authenticate_user!, only: [:purchase_top,:purchase]

  before_action :require_login, only: [:new, :create]
  before_action :set_item, only: [:show, :edit, :destroy]
  before_action :check_user_id, only: [:edit, :destroy]

  before_action :find_item, only: [:purchase_top, :purchase, :update]

  def index
    @items = Item.includes(:item_images).all
    @parent_categories = Category.roots()
  end

  def show
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
    @item = Item.new(item_params)
    params[:item]['item_images_attributes']['0']['image'].each do |a|
       @item.item_images.build(:image => a, :item_id => @item.id)
    end
    if @item.save!
      redirect_to root_path
    else
      render action: :new
    end
  end

  def edit
    @item_images.each do |item_image|
      item_image.image.cache!
    end
    set_category
    @item_image_length = "have-item#{@item.item_images.length}"
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    end
  end

  private
  def require_login
    redirect_to new_user_session_url unless user_signed_in?
  end

  def item_params
    item_params = params.require(:item).permit(
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
      :item_images_attributes
      ).merge(saler_id: current_user.id).merge(brand_id: set_brand_id)
  end

  def set_item_images(item)
    images = params[:item][:item_images_attributes]["0"]
    item_images = []
    images.each do |image|
      item_images << item.item_images.build(image: image)
    end
    return item_images
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

  def check_user_id
     redirect_to  new_user_session_url unless @item.saler_id == current_user.id
  end
end
