Rails.application.routes.draw do
  resources :listings
  resources :game_addresses
  resources :h_cats
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "pages/how"
  get "/my_listings", to: "listings#my_listings"
  
end
