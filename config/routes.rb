Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "items#home"
  get "/chairs", to: "items#chairs"
  get "/hats", to: "items#hats"
  get "/pants", to: "items#pants"
  get "/index", to: "items#index"
  get "/buy/:id", to: "items#buy"
  get "/new", to: "items#new"
  post "/create", to: "items#create"
end

