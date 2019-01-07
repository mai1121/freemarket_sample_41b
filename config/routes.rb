Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  get '/signup/registration' => 'temp#registration'
  get '/signup' => 'temp#index'
end
