Rails.application.routes.draw do
  get 'groups/index'
  devise_for :users
  root to: "groups#index"
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
end
