Rails.application.routes.draw do
  get 'inicio/index'

  resources :subasta
  resources :pujas
  resources :rentals
  resources :users
  resources :coches
  resources :venta
  resources :alquila_vehiculo
  resources :subasta_vehiculo

  root "inicio#index"
end
