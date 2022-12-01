Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:create, :update]
  resources :praticians, only: [:index, :show]

  resources :pages, only: [:profile]
end
