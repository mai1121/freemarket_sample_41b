# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  def facebook
    
  end

  def google_oauth2
    # リクエストと一致するuserか、いなかった場合はnewしたuserが代入される
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"])
    # モデルが保存されているかを確認
    if @user.persisted?
      # 保存ずみならログイン
      flash[:notice] = "成功しました"
      sign_in_and_redirect @user, event: :authentication
    else
      render :template => "devise/registrations/new"
      # binding.pry
    end
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
