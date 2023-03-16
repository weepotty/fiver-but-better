Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

  # Defines the root path route ("/")
  # root "articles#index"

  resources :services, only: %i[index show new create] do
    resources :offers, only: %i[show new create]
  end
end
