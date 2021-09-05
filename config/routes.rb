Rails.application.routes.draw do
  get "/", to: "homepage#home" as: "root"
  get "/index.html", to: "homepage#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
