Rails.application.routes.draw do
  get 'splash/index'
  resources :announcements
  resources :cpd_events
  resources :enrollments
  resources :unit_modules
  devise_for :users, controllers: { registrations: "registrations" }
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "splash#index"

end
