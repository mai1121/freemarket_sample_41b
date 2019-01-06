Rails.application.routes.draw do
  root 'items#index'
  get '/signup' => 'temp#index'
end
