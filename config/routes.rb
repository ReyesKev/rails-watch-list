Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index"
  # get "lists/42", to: "list#42"
  # get "list/new", to: "list#new", as: :new_task
  # post "lists", to: "list#create",
  root to: "lists#index"
  resources :lists, expect: [:edit, :update] do 
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
