Rails.application.routes.draw do
  resources :movie_groups
  resources :user_groups
  resources :comments
  resources :movies
  resources :groups
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
