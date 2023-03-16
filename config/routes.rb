Rails.application.routes.draw do
  resources :properties
  devise_for :accounts

  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/profile/:id' => 'accounts#profile', as: :profile

  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
