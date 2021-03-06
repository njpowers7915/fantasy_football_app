Rails.application.routes.draw do
  root "welcome#home"

  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get 'auth/facebook/callback', to: "sessions#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"

  get '/message_board', to: "comments#message_board"

  resources :users do
    resources :teams
  end

  resources :teams

  resources :leagues do
    resources :comments, only: [:new, :create, :index]
  end

  resources :comments
  resources :players
  resources :positions, only: [:show]

  #resources :comments
  #resources :leagues
  #resources :teams
  #resources :players
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
