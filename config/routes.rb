Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/hypnose",       to: "pages#hypnose"
  get "/naturopathie",  to: "pages#naturopathie"
  get "/osteopathie",   to: "pages#osteopathie"
  get "/chiropratique", to: "pages#chiropratique"
  get "/sonotherapie",  to: "pages#sonotherapie"

  get "/thematique1",  to: "pages#thematique1"
  get "/thematique2",  to: "pages#thematique2"
  get "/thematique3",  to: "pages#thematique3"


  resources :users, only: [:create, :update, :destroy]
  resources :profiles, only: [:show, :edit, :update]

  resources :praticians, only: [:index, :show] do
    resources :favorites, only: [:create, :destroy]
  end

end
