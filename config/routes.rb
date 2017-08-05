Rails.application.routes.draw do
  root 'pages#home'
  resources :vets
  resources :photos
  
  resources :vets do
    resources :reservations, only: [:create, :destroy]
    resources :reviews, only: [:create, :destroy]
    post '/like' => 'likes#like_toggle'
  end
  
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create]
  end
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  

  get '/search' => 'pages#search'

end
