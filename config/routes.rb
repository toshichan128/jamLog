Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users

  resources :live_houses do
  resources :reviews, only: [:index, :create]
end
  get 'live_house_search' => 'live_houses#search'
end
