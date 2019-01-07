class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:first_name,:last_name,:first_name_kana,:last_name_kana,:phone_number,:credit_card_num,:credit_card_expiration_month,:credit_card_expiration_year,:credit_card_security_num,:postal_code,:prefecture,:city,:address,:building_name,:birth_year,:birth_month,:birth_day])
  end

  def after_sign_out_path_for(resource)
   new_user_session_path
  end

end
