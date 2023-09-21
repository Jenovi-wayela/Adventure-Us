Rails.application.routes.draw do

  root to: "experiences#index"
  get '/dashboard', to: 'dashboards#show', as: :dashboard
<<<<<<< HEAD
  get '/search', to: 'experiences#show', as: :search
=======
  get '/search', to: 'experiences#search', as: :search
>>>>>>> master

  devise_for :users, controllers: { registrations: 'registrations' }
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  resources :experiences, only: [:index, :new, :create, :show]
  resources :categories, only: [:show]
  resources :bookings, only: [:new, :create]
end
