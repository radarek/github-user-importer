Rails.application.routes.draw do
  root to: 'github_users#index'

  resources :github_users, only: [:index, :create]
end
