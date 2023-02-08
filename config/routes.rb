Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/article", to: "article#index"
  get "/article/:id", to: "article#find"
  get "/article/category/:id", to: "article#category"
  get "/article/author/:id", to: "article#author"
  post "/create", to: "article#create"
  put "/update", to: "article#update"
  put "/updateone", to: "article#updateone"
  get "/user", to: "user#index"
  get "/user/:id", to: "user#find"
  post "/usercreate", to: "user#create"
  put "/userupdate", to: "user#update"
  put "/updatepass", to: "user#updateone" 
  delete "/delete", to: "article#delete"
  get "/findbydate", to: "article#findbydate"
end
