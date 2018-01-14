Rails.application.routes.draw do

  get 'faqs/faqs'

  get 'sessions/new'

  get 'venta/index'

  get 'subasta_vehiculo/index'

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

  root "inicio#index"
end
