Rails.application.routes.draw do
  get 'users/show'
  get 'events/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  root to: "events#index"
end
