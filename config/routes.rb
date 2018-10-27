Rails.application.routes.draw do
<<<<<<< HEAD
  resources :announcements
  resources :cpd_events
=======
  resources :enrollments
>>>>>>> 4d6524ce2badbc6d796e87429a082ff814967727
  resources :unit_modules
  devise_for :users
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
