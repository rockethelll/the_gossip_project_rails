Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/team' => 'team#team'
  get '/contact' => 'contact#contact'
  get '/welcome/:first_name' => 'home#welcome'
  get '/show/:id' => 'home#show', as: 'show'
  # Defines the root path route ("/")
  # root "articles#index"
end
