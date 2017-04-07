Rails.application.routes.draw do
  root 'dashboard#index'

  devise_for :users

  resources :dashboard, only: [:index]
  resources :test, only: [:index, :create]

  mount ActionCable.server, at: '/cable'
end
