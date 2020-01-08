Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    resources :books, only: [ :index, :show ] do
      resources :reviews, only: :index
    end
    resources :authors, only: :show
    resources :genres, only: :show
    resources :reviews, only: [:create, :show, :update, :destroy]
  end
end
