Rails.application.routes.draw do

  resources :users
  resources :recipes
  resources :reviews
  resources :ingredients


  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create', as: 'sessions'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
