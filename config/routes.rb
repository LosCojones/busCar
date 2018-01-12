Rails.application.routes.draw do
  resources :subasta
  resources :pujas
  resources :rentals
  resources :buysells
  resources :users
  resources :coches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
