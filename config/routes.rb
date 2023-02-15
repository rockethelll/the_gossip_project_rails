Rails.application.routes.draw do
  root 'home#index'
  resources :gossip, only: [:new, :create, :show]
  get 'author/author'
  get '/team' => 'team#team'
  get '/contact' => 'contact#contact'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/welcome/:first_name' => 'home#welcome', as: 'welcome'

  get '/author/:id' => 'author#author', as: 'author'

  # Defines the root path route ("/")
  # root "articles#index"
end
