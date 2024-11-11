Rails.application.routes.draw do
  resources :tasks do 
    member do
      patch :toggle_complete
    end
  end

  root to: "tasks#index"
  
  devise_for :users
  get 'users/profile', as: 'user_root'
end