class UsersController < ApplicationController

  layout "mypage_layout", only: [:show, :identification, :logout, :card, :profile, :items]
  before_action :set_layout, only:[:show, :identification, :card, :profile, :items]

  def top
  end

  def after_signup
  end

  def registration
  end

  def identification
  end

  def show


  end

  def profile

  end

  def logout
  end

  def card
  end

  def item
    @item = Item.includes(:item_images).find(params[:id])
    @item_images = @item.item_images
    @saler = current_user
    set_category
  end

  def items
    @items = Item.includes(:item_images).where(saler_id: @user.id)
  end

  private
  def set_layout
    @user = current_user
    redirect_to root_path, notice: "not signed in!!" unless @user
  end

  def set_category
    @category = @item.category
    @parent_category = @category.parent
    @grandparent_category = @category.root
  end
end
