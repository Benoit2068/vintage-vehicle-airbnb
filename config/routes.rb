Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :vehicles do
    resources :reservations, only: [ :new, :create ]
  end
  resources :reservations, only: [ :show, :edit, :update, :destroy ]
  resources :users, only: [ :show]
end
