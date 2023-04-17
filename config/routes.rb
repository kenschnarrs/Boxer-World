Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  get 'home', to: 'pages#home', as: 'home'
  get 'boxing_gloves', to: 'pages#boxing_gloves', as: 'boxing_gloves'
  get 'punching_bags', to: 'pages#punching_bags', as: 'punching_bags'
  get 'apparel', to: 'pages#apparel', as: 'apparel'

  get 'search', to: 'item#search', as: 'search'
  get 'items', to: 'items#index', as: 'items'
  get 'items/:id', to: 'item#show', as: 'item'



  get 'items/:item_id/reviews', to: 'reviews#index', as: 'item_reviews'
  post 'items/:item_id/reviews', to: 'reviews#create'
  get 'items/:item_id/reviews/new', to: 'reviews#new', as: 'new_item_review'
  # get 'items/:item_id/reviews', to: 'reviews#show', as: 'item_review'

  get 'users', to: 'users#index', as: 'users'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'

  
end
