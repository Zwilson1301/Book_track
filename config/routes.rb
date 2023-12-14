Rails.application.routes.draw do
  get 'dashboard/index'
  get 'searches', :to => 'searches#index'
  mount  LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  resources :lists
  resources :books
  resources :genres
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
