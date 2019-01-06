Rails.application.routes.draw do
  root 'items#index'
  get '/signup/registration' => 'temp#registration'
  get '/signup' => 'temp#index'
end
