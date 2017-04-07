Rails.application.routes.draw do
  # devise_for :users
  root 'dashboard#index'

  resources :dashboard, only: [:index]
  resources :test, only: [:index, :create]

  mount ActionCable.server, at: '/cable'
end
