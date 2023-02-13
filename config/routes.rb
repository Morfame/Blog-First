Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "articles#index"
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show", as: :article
  get "/articles/new", to: "articles#new"
  post "/articles", to: "articles#create"

  # Defines the root path route ("/")
  # root "articles#index"
  #resource :articles
end
