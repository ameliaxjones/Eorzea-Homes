Rails.application.routes.draw do
  resources :listings
  resources :game_addresses
  resources :h_cats
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "/listings", to: "listings#index"
  get "/listings/:id", to: "listings#show", as: "show_listing"
end
