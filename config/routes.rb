Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users, only: [:edit, :update]
  resources :mypages, only: [:show]
end
