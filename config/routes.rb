Rails.application.routes.draw do
  get 'search/index'
  # get 'dashboard/index'
  mount  LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  resources :lists
  resources :books
  resources :genres
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
