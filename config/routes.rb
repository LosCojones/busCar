Rails.application.routes.draw do
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

  root "inicio#index"
end
