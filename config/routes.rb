Rails.application.routes.draw do
  resources :services
  resources :newtests
  resources :histories
  resources :carts
  resources :products
  resources :sessions

  resources :users

  root to: 'pages#index'

  get 'login', to: 'pages#login'
  get 'register', to:'pages#register'
  get 'show_all', to:'products#show_all'
  get 'show_picked', to:'products#show_picked'
  get 'show_all_cart', to:'carts#show_all_cart'
  get 'show_all_history', to:'histories#show_all_history'
  get 'add_to_cart', to:'products#add_to_cart'
  get 'buy', to:'carts#buy'
  get 'show_my_services', to: 'services#show_my_services'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "show_user{:id}" => "users#show", as: :show_user
end
