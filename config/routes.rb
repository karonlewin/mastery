Rails.application.routes.draw do
  resources :employees
  resources :clients
  devise_for :users
  resources :appointments

  root to: 'home#index'
  get '/dashboard', to: 'dashboard#index'
end
