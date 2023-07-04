Rails.application.routes.draw do
  root to: "home#index"
  get "about", to: "about#index"

  #Sign_up
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  #Sign_in 
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"
end