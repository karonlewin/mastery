Rails.application.routes.draw do
  resources :stores
  resources :sales
  resources :services
  resources :employees
  resources :clients
  resources :appointments
  devise_for :users

  root to: 'home#index'
  get '/dashboard', to: 'dashboard#index'
end
