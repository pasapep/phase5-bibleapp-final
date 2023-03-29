Rails.application.routes.draw do
  get 'photos/index'
  get 'photos/show'
  resources :images
  resources :statuses
  resources :tablebooks
  resources :bibles
  resources :verses
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "users#index"
  resources :photos, only: [:index, :show]

end
