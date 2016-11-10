Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "items#home"
  get "/chair", to: "items#chair"
  get "/hat", to: "items#chair"
  get "/pants", to: "items#pants"

end

