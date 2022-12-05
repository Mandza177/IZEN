Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile",       to: "pages#profile"
  get "/hypnose",       to: "pages#hypnose"
  get "/naturopathie",  to: "pages#naturopathie"
  get "/osteopathie",   to: "pages#osteopathie"
  get "/chiropratique", to: "pages#chiropratique"
  get "/sonotherapie",  to: "pages#sonotherapie"
  get "/thematique",    to: "pages#thematique"

  resources :users, only: [:create, :update]
  resources :praticians, only: [:index, :show]
end
