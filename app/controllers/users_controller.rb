class UsersController < ApplicationController

  layout "mypage_layout", only: [:show, :identification, :logout, :card]
  before_action :set_layout, only:[:show, :identification, :card]

  def top
  end

  def registration
  end

  def identification
  end

  def show
  end

  def logout
  end

  def card
  end

  private
    def set_layout
      @user = current_user
      redirect_to root_path, notice: "not signed in!!" unless @user
    end

end
