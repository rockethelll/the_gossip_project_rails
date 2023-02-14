Rails.application.routes.draw do
  resources :gossip, only: [:new, :create]
  # get 'author/author'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/team' => 'team#team'
  get '/contact' => 'contact#contact'
  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'
  get '/show/:id' => 'show#show', as: 'show'
  get '/author/:id' => 'author#author', as: 'author'
  # Defines the root path route ("/")
  # root "articles#index"
end
