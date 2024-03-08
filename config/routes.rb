Rails.application.routes.draw do
  resources :tickets
  resources :registrations
  resources :tournaments
  resources :games
  resources :players
  resources :teams
  resources :users
  post "signup",to: "users#create"
  post "login", to:"sessions#create"
  delete "logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
