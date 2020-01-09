Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    resources :users, only: :show  do
      resources :bookshelves, only: [ :index ]
    end
    resources :books, only: [ :index, :show ] do
      resources :reviews, only: :index
    end
    resources :authors, only: :show
    resources :bookshelves, only: [:show]
    resources :genres, only: :show
    resources :reviews, only: [:create, :show, :update, :destroy]
  end
end
