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

  # def update
  #   user = User.find(current_user.id)
  #   user.update(user_params)
  #   redirect_to users_mypage_path
  # end

  def set_layout
    @user = current_user if user_signed_in?
    unless @user
      redirect_to root_path, notice: "not signed in!!"
    else
      @parent_categories = Category.roots()
      @blands = ['シャネル','ナイキ','ルイ　ヴィトン','シュプリーム','アディダス','ブランド一覧']
    end
  end

  # private
  # def user_params
  #   params.require(:user).permit(:nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, :phone_number,:postal_code, :prefecture, :city, :address, :building_name, :birth_year, :birth_month, :birth_day)
  # end
end
