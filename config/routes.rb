Rails.application.routes.draw do
  resources :services
  resources :employees
  resources :clients
  devise_for :users
  resources :appointments

  root to: 'home#index'
  get '/dashboard', to: 'dashboard#index'
end
