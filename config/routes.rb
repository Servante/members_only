Rails.application.routes.draw do
  resources :tposts
  get 'posts/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "posts#index"
  resources :posts
end
