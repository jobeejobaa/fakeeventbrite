Rails.application.routes.draw do
  root "events#index"  

  devise_for :users
  resources :users, only: [:show]
  resources :events
  resources :attendances
  
  get "up" => "rails/health#show", as: :rails_health_check
end
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
