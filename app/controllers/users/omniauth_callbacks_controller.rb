class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.find_for_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      render :template => "devise/registrations/new"
    end
  end

  def google_oauth2
    @user = User.find_for_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      render :template => "devise/registrations/new"
    end
  end
end
