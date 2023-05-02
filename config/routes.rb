Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  # Pages
  get 'home', to: 'pages#home', as: 'home'
  get 'index', to: 'pages#index'
  get 'boxing_gloves', to: 'pages#boxing_gloves', as: 'boxing_gloves'
  get 'punching_bags', to: 'pages#punching_bags', as: 'punching_bags'
  get 'apparel', to: 'pages#apparel', as: 'apparel'
  get 'search', to: 'pages#search', as: 'search'

  # Item
  get 'items/:id', to: 'item#show', as: 'item'
  get 'items', to: 'items#index', as: 'items'

  # Cart
  get 'cart', to: 'carts#show', as: 'cart'
  post 'items/:id/add_to_cart', to: 'cart_items#create', as: 'add_to_cart'

  # Cart Items
  get '/cart_items/:id/edit', to: 'cart_items#edit', as: 'cart_items_edit'
  delete '/cart_items/:id/', to: 'cart_items#delete', as: 'cart_items'
  patch '/cart_items/:id/', to: 'cart_items#update'

  # Payments
  get 'checkout', to: 'payment#new', as: 'new_payment'
  post 'payments', to: 'payment#create', as: 'create_payment'
  get 'payments/:id', to: 'payment#show', as: 'payment'
  get 'payments', to: 'payment#index', as: 'payments'

  # Reviews
  get 'items/:item_id/reviews', to: 'reviews#index', as: 'item_reviews'
  post 'items/:item_id/reviews', to: 'reviews#create'
  get 'items/:item_id/reviews/new', to: 'reviews#new', as: 'new_item_review'
  get 'items/:item_id/reviews/:id/edit', to: 'reviews#edit', as: 'edit_item_review'
  patch 'item/:item_id/reviews/:id', to: 'reviews#update', as: 'toedit'
  # get 'items/:item_id/reviews', to: 'reviews#show', as: 'item_review'
  delete 'items/:item_id/reviews/:id', to: 'reviews#destroy', as: 'delete_item_review'

  # Users
  get 'user/edit', to: 'users#edit', as: 'edit_user'
  patch 'user', to: 'users#update', as: 'user_update'
  get 'users', to: 'users#index', as: 'users'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'user', to: 'users#default_show', as: 'user_default'

  # ------------- Wishlist ------------
  get 'user/:user_id/wishlists', to: 'wishlist#index', as: 'user_wishlists'
  post 'user/:user_id/wishlists', to: 'wishlist#create'
  get 'user/:user_id/wishlists/new', to: 'wishlist#new', as: 'new_user_wishlist'
  get 'user/:user_id/wishlists/:id', to: 'wishlist#show', as: 'user_wishlist'

  # Wishlist Items
  resources :items do
    post 'add_to_wishlist', on: :member
  end

  post 'items/:id/add_to_wishlist', to: 'wishlist_items#create', as: 'add_to_wishlist'

end
