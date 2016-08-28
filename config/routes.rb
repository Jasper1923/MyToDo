Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, except: [:show, :new]
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
end
