Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show]
  resources :articles
  root 'articles#index'


end
