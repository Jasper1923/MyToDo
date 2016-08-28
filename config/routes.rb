Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todos#index'
  resources :todos, except: [:show, :new]
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new'
end
