Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/profile",       to: "pages#profile"
  get "/hypnose",       to: "pages#hypnose"
  get "/naturopathie",  to: "pages#naturopathie"
  get "/ostheopathie",   to: "pages#ostheopathie"
  get "/chiropratique", to: "pages#chiropratique"
  get "/sonotherapie",  to: "pages#sonotherapie"

  get "/thematique1",  to: "pages#thematique1"
  get "/thematique2",  to: "pages#thematique2"
  get "/thematique3",  to: "pages#thematique3"


  resources :users, only: [:create, :update, :destroy]
  resources :praticians, only: [:index, :show]
  resources :profiles, only: [:show, :edit, :update]
end
