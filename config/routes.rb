Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users
  root to: "home#index"
  resources :users
  resources :items do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end
