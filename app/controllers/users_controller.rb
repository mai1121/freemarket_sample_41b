class UsersController < ApplicationController
  layout "mypage_layout", only: [:show, :logout, :card]

  def top
  end

  def registration
  end

  def show
    @user = current_user

    redirect_to root_path, notice: "not signed in!!" unless @user
  end

  def logout
  end

  def card
    @user = current_user
  end
end
