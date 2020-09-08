Rails.application.routes.draw do
  # Devise
  devise_for :users

  resources :users, only: %i[index show edit update]
  resources :books, only: %i[index show edit create update destroy]

  # Static pages
  get 'home' => 'home#index'
  get 'home/about' => 'home#about'

  # root
  root to: 'home#index'
end
