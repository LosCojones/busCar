Rails.application.routes.draw do
  get 'venta/index'

  get 'subasta_vehiculo/index'

  get 'subastaa_vehiculo/index'

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

  root "inicio#index"
end
