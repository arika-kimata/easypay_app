Rails.application.routes.draw do
  get 'users/show'
  get 'items/index'
  devise_for :users

  root to: 'items#index'

  resources :users, only: [:show, :update]
  
end
