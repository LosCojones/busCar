Rails.application.routes.draw do

  get 'unasubasta/index'

  get 'faqs/faqs'

  get 'sessions/new'

  get 'venta/index'

  post 'subasta_vehiculo/create'

  #get 'subasta_vehiculo/index'

  get 'alquila_vehiculo/index'

  resources :sells
  get 'inicio/index'

  resources :subasta
  resources :pujas
  resources :rentals
  resources :users
  resources :coches
  resources :venta
  resources :alquila_vehiculo
  resources :subasta_vehiculo
  resources :sessions

  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"
  get 'inicio/index/:id', to: 'inicio#index'
  get 'subasta/index/:id', to: 'inicio#index'

  root "inicio#index"
end
