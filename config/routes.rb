Rails.application.routes.draw do
  devise_for :users
  root to:"posts#index"
  resources :users, only: [:edit, :update]
  resources :posts do
    resources :report_comments, only: :create
    resources :favorites, only: [:create, :destroy]
  end
  resources :forgets
end
