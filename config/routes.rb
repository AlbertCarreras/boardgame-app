Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#new'
  post '/' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/analytics' => 'analytics#show'
  get '/signup' => 'users#new'


  resources :events
  resources :ownerships
  resources :sessions, only: [:new, :create]
  resources :event_players, only: [:create, :show, :destroy]
  resources :games, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index, :show, :new, :create, :edit, :update]

end
