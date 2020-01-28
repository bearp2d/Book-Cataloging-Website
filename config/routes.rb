Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: "sessions", registrations: 'registrations'}
  root to: 'pages#home'

  get  "books/:id", to: 'pages#home'
  get  "authors/:id", to: 'pages#home'
  get "reviews/new", to: 'pages#home'
  get "users/:id/bookshelves", to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [ :show, :create, :destroy ]  do
      resources :bookshelves, only: [ :index ]
    end
    resources :books, only: [ :index, :show ] do
      resources :reviews, only: [ :index, :create ]
    end
    resources :authors, only: :show
    resources :bookshelves, only: [:show]
    resources :genres, only: [:index, :show ]
    resources :reviews, only: [:show, :update, :destroy]
    resources :booksubscriptions, only: [ :index, :create, :destroy ]
  end
end
