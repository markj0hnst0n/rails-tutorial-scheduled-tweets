Rails.application.routes.draw do
  root to: "main#index"

  get "about-us", to: "about#index", as: :about

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"
  
  delete "logout", to: "session#destroy"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
