Rails.application.routes.draw do
  get 'emotions/create'
  get 'groups/index'
  devise_for :users
  root to: "groups#index"
  resources :users, only: [:index, :show, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
  resources :emotions, only: [:create]
end
