Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "items#home"
  get "/chairs", to: "items#chairs"
  get "/hats", to: "items#chairs"
  get "/pants", to: "items#pants"

end

