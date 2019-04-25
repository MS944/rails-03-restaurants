Rails.application.routes.draw do
  devise_for :users
  get "/restaurants", to: "restaurants#index", as: "restaurants"
  post "/restaurants/new", to: "restaurants#create"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  # put "/restaurants/:id", to: "restaurants#update"
  patch "/restaurants/:id", to: "restaurants#update", as:"update_restaurant"
  get "/restaurants/:id/edit", to: "restaurants#edit", as: "edit_restaurant"
  # post "/restaurants/:id", to: "restaurants#create"
  get "/restaurants/:id/delete", to: "restaurants#delete", as: "delete_restaurant"
  delete "/restaurants/:id/delete", to: "restaurants#destroy", as: "destroy_restaurant"
  post "/reviews", to: "reviews#create", as: "review"
  delete "/reviews/:id/delete", to: "reviews#destroy", as: "destroy_review"
  root 'restaurants#index'
end
