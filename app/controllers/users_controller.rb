class UsersController < ApplicationController

  layout "mypage_layout", only: [:show, :identification, :logout]
  before_action :set_layout, only:[:show, :identification]

  def top
  end

  def registration
  end

  def identification
    
  end

  def show

    
  end

  def set_layout
    @user = current_user

    redirect_to root_path, notice: "not signed in!!" unless @user
  end

  def logout

  end
end
