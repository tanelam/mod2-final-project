Rails.application.routes.draw do

  resources :users
  resources :recipes do
    resources :ingredients
  end
  resources :directions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
