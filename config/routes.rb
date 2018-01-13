Rails.application.routes.draw do
  resources :sells
  get 'inicio/index'

  resources :subasta
  resources :pujas
  resources :rentals
  resources :users
  resources :coches

  root "inicio#index"
end
