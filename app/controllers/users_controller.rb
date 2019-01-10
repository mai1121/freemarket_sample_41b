class UsersController < ApplicationController
  layout "mypage_layout", only: [:show]

  def top
  end

  def registration
  end

  def show
    @user = current_user

    redirect_to root_path, notice: "not signed in!!" unless @user

    @parent_categories = Category.roots()
  end
end
