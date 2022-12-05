Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  get "/pratiques/hynopse",       to: "pages#hypnose"
  get "/pratiques/naturopathie",  to: "pages#naturopathie"
  get "/pratiques/osteopathie",   to: "pages#osteopathie"
  get "/pratiques/chiropratique", to: "pages#chiropratique"
  get "/pratiques/sonotherapie",  to: "pages#sonotherapie"
  get "/thematique",  to: "pages#thematique"
  
  resources :users, only: [:create, :update]
  resources :praticians, only: [:index, :show]
end
