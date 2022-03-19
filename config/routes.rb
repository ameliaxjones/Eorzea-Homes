Rails.application.routes.draw do
  resources :reviews
  resources :housingsizes
  resources :orders
  resources :listings
  resources :game_addresses
  resources :charges
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "pages/how"
  get "pages/designers"
  get "/my_listings", to: "listings#my_listings"

  
end
