Rails.application.routes.draw do
  resources :movie_groups
  resources :user_groups
  resources :comments
  resources :movies
  resources :groups
  resources :users

  post '/login', to: 'auth#create'
  get '/auto_login', to: 'auth#auto_login'

  post '/users', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
