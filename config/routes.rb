Rails.application.routes.draw do
  devise_for :users

  # root
  root to: "home#index"
end
