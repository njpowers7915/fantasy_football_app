Rails.application.routes.draw do
  root "welcome#home"

  

  resources :comments
  resources :leagues
  resources :positions
  resources :teams
  resources :players
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
