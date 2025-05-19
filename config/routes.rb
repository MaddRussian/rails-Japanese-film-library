Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [:index, :new, :show, :create, :destroy]
  resources :bookmarks, only: [:create, :destroy]
  resources :movies, only: [:new, :recommend]
end
