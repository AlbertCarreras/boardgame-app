Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#home'

resources :games, only: [:index, :show, :new, :create, :edit, :update]
resources :users, only: [:index, :show, :new, :create, :edit, :update]
resources :events, only: [:index, :show, :new, :create, :edit, :update]

end