Rails.application.routes.draw do
  resources :tasks

  root to: "tasks#index"
  
  devise_for :users
  get 'persons/profile', as: 'user_root'
end