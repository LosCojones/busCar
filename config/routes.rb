Rails.application.routes.draw do
  get 'inicio/index'

  resources :subasta
  resources :pujas
  resources :rentals
  resources :buysells
  resources :users
  resources :coches

  root "inicio#index"
end
