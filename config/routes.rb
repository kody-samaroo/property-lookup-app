Rails.application.routes.draw do
  resources :news
  resources :properties
  devise_for :accounts

  get "/accounts" => 'admin#accounts', as: :accounts
  delete "/accounts/:id" => 'accounts#delete', as: :delete_account

  # get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/profile/:id' => 'accounts#profile', as: :profile

  get "/about_us" => 'dashboard#about_us', as: :about_us

  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
