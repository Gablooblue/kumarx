Rails.application.routes.draw do
  resources :unit_modules
  devise_for :users
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
