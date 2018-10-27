Rails.application.routes.draw do
  get 'splash/index'
  resources :enrollments
  resources :unit_modules
  devise_for :users
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "splash#index"
end
