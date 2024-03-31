Rails.application.routes.draw do
  resources :jobs
  resources :companies
  resources :people

  namespace :api do
    # returns only people with all attributes
    namespace :v0 do
      resources :people
    end
    # returns only people with selected attributes
    namespace :v1 do
      resources :people
    end
    # returns nested objects (jobs and companies)
    namespace :v2 do
      resources :people
    end
    # add ruby calculated values with neste objects
    namespace :v3 do
      resources :people
    end
    # adds SQL calculated values with neste objects
    namespace :v4 do
      resources :people
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "people#index"
end
