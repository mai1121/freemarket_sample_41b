Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  root 'items#index'
  resources :items, only: [:show, :index] 
  get 'users/sign_up_top' => 'users#top'
  get '/signup/registration' => 'users#registration'
  get '/users/mypage/' => 'users#show'
  get '/users/mypage/identification' => 'users#identification'
  get '/users/mypage/logout' => 'users#logout'
  get '/users/mypage/profile' => 'users#profile'
  get '/users/mypage/card' => 'users#card'
end
