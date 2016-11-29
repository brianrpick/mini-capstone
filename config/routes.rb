Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "items#home"
  get "/chairs", to: "items#chairs"
  get "/hats", to: "items#hats"
  get "/pants", to: "items#pants"
  post "/search", to: "items#search"
  get "/items", to: "items#index"
  get "/items/new", to: "items#new"
  post "/items", to: "items#create"
  get "/items/:id/edit", to: "items#edit"
  patch "/items/:id", to: "items#update"
  get "/items/:id", to: "items#show"
  delete "/items/:id", to: "items#destroy"

  post "/items/:id/image", to: "images#create"
  get "/items/:id/image", to: "images#new"
  
  get "/signup", to: "users#new"
  post "/users", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  get "/items/:id/buy", to: "orders#show"
  post "/items/:id/buy", to: "orders#create"
end
