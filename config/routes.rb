Rails.application.routes.draw do
  devise_for :users
  resources :models
  resources :friends
  get 'home/about'
  root 'home#index'
  get 'home/contact'
  # get 'home/about'
  # # get "/home", to: "home/about"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
