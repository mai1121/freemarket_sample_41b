Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  get 'users/sign_up_top' => 'users#top'
  get '/signup/registration' => 'users#registration'
end
