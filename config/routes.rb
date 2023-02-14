Rails.application.routes.draw do
  root 'home#index'
  resources :gossip, only: [:new, :create]
  get 'author/author'
  get '/team' => 'team#team'
  get '/contact' => 'contact#contact'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'
  get '/show/:id' => 'show#show', as: 'show'

  get '/author/:id' => 'author#author', as: 'author'

  # Defines the root path route ("/")
  # root "articles#index"
end
