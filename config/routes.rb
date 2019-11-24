Rails.application.routes.draw do
  get 'books/index'
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :articles
  # resources :shops
  get "shops/index" => "shops#index"
  get "shops/:id" => "shops#show"
  get "books/index" => "books#index"
  # get "posts/index" => "posts#index"
  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "about" => "home#about"
end
