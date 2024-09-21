Rails.application.routes.draw do
  resources :drivers
  resources :teams
  resources :circuits
  resources :users, only: [ :create, :update, :destroy ]

  post "login", to: "users#login"
end
