Rails.application.routes.draw do
  get 'welcome/welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/team' => 'pages#team'
  get '/contact' => 'pages#contact'
  # Defines the root path route ("/")
  # root "articles#index"
end
