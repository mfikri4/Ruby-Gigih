Rails.application.routes.draw do
  resources :orders
  root to: "menus#dashboard"
  resources :categories, :menus, :carts, :order_details, :orders, :customers

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
