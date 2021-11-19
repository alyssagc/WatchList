Rails.application.routes.draw do
  # verb "url", to: "controller#action"
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new"

  # get "lists/:id", to: "lists#show", as: 'list'

  # post "lists", to: "lists#create"

  resources :lists, only: [:index, :new, :show, :create]
  resources :lists do
    resources :bookmarks, only: [ :new, :create]
  end
  resources :bookmarks, only: [:destroy]

end
