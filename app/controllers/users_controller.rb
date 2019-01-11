class UsersController < ApplicationController
  layout "mypage_layout", only: [:show, :identification]
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
    @user = current_user if user_signed_in?
    unless @user
      redirect_to root_path, notice: "not signed in!!"
    else
      @parent_categories = Category.roots()
      @blands = ['シャネル','ナイキ','ルイ　ヴィトン','シュプリーム','アディダス','ブランド一覧']
    end
  end
end
