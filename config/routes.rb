Rails.application.routes.draw do
  root "lists#index"
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: :destroy
end
