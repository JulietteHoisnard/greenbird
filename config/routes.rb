Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :challenges do
    resources :challenge_users, only: [:new, :create, :update] do
      patch :update_opt, on: :member
    end
  end
  resources :users, only: [:index, :show, :edit, :update]
  get 'users/:id/dashboard', to: 'users#dashboard', as: 'dashboard'
  post 'users/:id/:friend_user_id', to: 'users#addfriend', as: 'addfriend'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
