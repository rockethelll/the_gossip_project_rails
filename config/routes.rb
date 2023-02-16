Rails.application.routes.draw do
  # get 'gossips/new'
  # get 'gossips/create'
  # get 'gossips/show'
  root 'home#index'
  resources :gossip
  resources :user, only: [:show]
  resources :author, only: [:show]
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :city, only: [:show]

  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
