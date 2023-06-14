Rails.application.routes.draw do
  get 'appointments/new'
  get 'appointments/update'
  get 'appointments/show'
  devise_for :users
  root to: "bookings#home"

  resources :appointments, only: [:new, :update, :show] do
    resources :services, only: [:index, :create, :update, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
