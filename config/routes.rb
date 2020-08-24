Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :challenges
  resources :users, only: [:show, :edit, :update]
  get 'users/:id/dashboard', to: 'users#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
