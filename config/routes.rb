Rails.application.routes.draw do
  get 'splash/index'
  get "feed/events", to: "feed#events", as: "event_feed"
  get "feed/modules", to: "feed#modules", as: "module_feed"
  get "profiles/:id", to: "profiles#show"
  resources :cpd_events do
      resources :announcements
  end
  resources :unit_modules do
      resources :enrollments
  end

  devise_for :users, controllers: { registrations: "registrations" }
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root "splash#index"

end
