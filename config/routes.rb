Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "homes/about"

  resources :users, only: [:index, :show, :edit, :update]
  resources :ideas, only: [:new, :show, :edit, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
