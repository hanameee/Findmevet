Rails.application.routes.draw do

  root 'pages#home'
  
  resources :vets
  resources :photos
  
  resources :vets do
    resources :reservations, only: [:create, :destroy]
    resources :reviews, only: [:create, :destroy]
    post '/like' => 'likes#like_toggle'
  end

  resources :conversations, only: [:index, :create, :show] do
    resources :messages, only: [:index, :create, :show]
  end
  
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  
  resources :users
  resources :examinations

  get '/search' => 'pages#search'
  get '/searchreview' => 'pages#searchreview'
  get 'searchstar' => 'pages#searchstar'
  
  get '/introduction' => 'pages#introduction'
  resources :pages
  # devise_for :users do
  # get ':user/edit-profile' => 'devise/registration#edit', :as => :edit_user_profile
  # end
end
