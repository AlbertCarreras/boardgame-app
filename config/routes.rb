Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  post '/' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :sessions, only: [:new, :create]
  resources :games, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :events
  resources :ownerships
  resources :event_players

end
