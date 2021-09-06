Rails.application.routes.draw do
  get "/home", to: "homepage#home", as: "root"
  get "/", to: "homepage#home"
  # get "/index.html", to: "homepage#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
