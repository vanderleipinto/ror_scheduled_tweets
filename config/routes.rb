Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get "about", to: "about#index"

  get "password", to: "password#edit"
  get "sign_up",  to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in",  to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
  
  root to: "main#index"
  
end
