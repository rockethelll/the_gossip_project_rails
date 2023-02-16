Rails.application.routes.draw do
  root 'home#index'
  resources :gossip
  resources :users, only: [:show, :new, :create]
  resources :author, only: [:show]
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :city, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  # delete 'logout', to: 'sessions#destroy', as: 'logout'

  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
