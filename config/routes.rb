Rails.application.routes.draw do
  root 'home#index'
  resources :gossip, only: [:new, :create, :show]
  resources :user, only: [:show]
  resources :author, only: [:show]
  resources :team, only: [:index]
  resources :contact, only: [:index]

  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
