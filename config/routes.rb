Rails.application.routes.draw do
  resources :orders
  resources :lineitems
  resources :carts
  root "shopper#index", as: "shopper" #shopper_path
  get 'product/:id', to: "products#view", as: "view_product"
  resources :products
  get 'login', to: "access#new"
  post 'login', to: "access#create"
  delete 'logout', to: "access#destroy"
  get 'admin', to: "admin#index"
  get 'search', to: "shopper#search"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
