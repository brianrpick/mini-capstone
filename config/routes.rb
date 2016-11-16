Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "items#home"
  get "/chairs", to: "items#chairs"
  get "/hats", to: "items#hats"
  get "/pants", to: "items#pants"
  get "/items", to: "items#index"
  get "/buy/:id", to: "items#buy"
  get "/contacts/new", to: "items#new"
  post "/items", to: "items#create"
  get "/items/:id/edit", to: "items#edit"
  patch "/update/:id", to: "items#update"
  get "/items/:id", to: "items#show"
  delete "/items/:id", to: "items#destroy"
  
end
