Rails.application.routes.draw do
  # Devise
  devise_for :users

  # Static pages
  get 'home' => 'home#index'
  get 'home/about' => 'home#about'

  # root
  root to: 'home#index'
end
