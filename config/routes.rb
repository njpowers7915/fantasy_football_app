Rails.application.routes.draw do
  root "welcome#home"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get 'auth/facebook/callback', to: "sessions#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  resources :users do
    resources :teams, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :leagues, only: [:new, :create, :show]
    resources :comments, only: [:show, :index]
  end

  resources :teams, only: [:index]
  resources :leagues
  resources :players

  #resources :comments
  #resources :leagues
  #resources :teams
  #resources :players
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
