Rails.application.routes.draw do
  get 'books/index'
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :articles

  resources :shops
  resources :books
  get "/" => "home#top"
end
