class UsersController < ApplicationController
  layout "mypage_layout", only: [:show]

  def top
  end

  def registration
  end

  def show
    @user = current_user if user_signed_in?
    unless @user
      redirect_to root_path, notice: "not signed in!!"
    else
      @parent_categories = Category.roots()
      @blands = Brand.recommend_items.keys
    end
  end
end
