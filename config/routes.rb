Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :challenges do
    resources :challenge_users, only: [:new, :create]
  end
  resources :users, only: [:show, :edit, :update]
  get 'users/:id/dashboard', to: 'users#dashboard', as: 'dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
