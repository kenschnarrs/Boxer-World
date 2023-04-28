Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  get 'home', to: 'pages#home', as: 'home'
  get 'boxing_gloves', to: 'pages#boxing_gloves', as: 'boxing_gloves'
  get 'punching_bags', to: 'pages#punching_bags', as: 'punching_bags'
  get 'apparel', to: 'pages#apparel', as: 'apparel'

  post 'items/:id/add_to_cart', to: 'cart_items#create', as: 'add_to_cart'

  get 'search', to: 'item#search', as: 'search'
  get 'items', to: 'items#index', as: 'items'
  get 'items/:id', to: 'item#show', as: 'item'

  get 'cart', to: 'carts#show', as: 'cart'
  get '/cart_items/:id/edit', to: 'cart_items#edit', as: 'cart_item_edit'

  # Payments
  get 'checkout', to: 'payment#new', as: 'new_payment'
  post 'payments', to: 'payment#create', as: 'create_payment'

  # Reviews
  get 'items/:item_id/reviews', to: 'reviews#index', as: 'item_reviews'
  post 'items/:item_id/reviews', to: 'reviews#create'
  get 'items/:item_id/reviews/new', to: 'reviews#new', as: 'new_item_review'
  # get 'items/:item_id/reviews', to: 'reviews#show', as: 'item_review'

  # Users
  get 'users', to: 'users#index', as: 'users'
  get 'user/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'user_profile', to: 'users#update_profile', as: 'user_profile_update'
  get 'user', to: 'users#profile', as: 'user_profile'
  patch 'user', to: 'users#update', as: 'user_update'  

  
  
end
