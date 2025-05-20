Rails.application.routes.draw do
  root to: "films#index"
  resources :films, only: [:index, :show] do
    collection do
      get :random
    end
  end
  resources :lists do
    resources :bookmarks, only: [:create, :destroy]
  end
end
