Rails.application.routes.draw do
  devise_for :users
  root to: "services#index"

  resources :services, only: [:index]

  resources :appointments
end
# Generic syntax:
# verb "path", to: "controller#action"
