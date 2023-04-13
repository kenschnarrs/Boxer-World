Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  get 'home', to: 'pages#home', as: 'home'
  get 'search', to: 'item#search', as: 'search'
  get 'items', to: 'items#index', as: 'items'
  get 'items/:id', to: 'item#show', as: 'item'
end
