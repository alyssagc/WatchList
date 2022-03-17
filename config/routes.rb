Rails.application.routes.draw do
  root to: "home#index"

  resources :lists, only: [:index, :new, :show, :create]
  resources :lists do
    resources :bookmarks, only: [ :new, :create]
  end
  resources :bookmarks, only: [:destroy]

end
