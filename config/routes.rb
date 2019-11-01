Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :articles
  # resources :shops
  get "shops/index" => "shops#index"
  get "shops/:id" => "shops#show"
  # get "posts/index" => "posts#index"
  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "about" => "home#about"
end
