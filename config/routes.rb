Rails.application.routes.draw do
  devise_for :user_addresses
  devise_for :users
  root 'items#index'
end
