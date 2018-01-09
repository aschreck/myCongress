Rails.application.routes.draw do
  root :to => redirect('/home')
  get '/home', to: 'home#index'
  get  '/', to: "main#index"
  get  '/signup', to: "users#new"
  post '/users', to: "users#create"

  get  '/dashboard', to: "dashboard#index"
  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get '/follow', to: "follow#create"
  delete '/follow', to: "follow#destroy"

  get '/find_politicians', to: "find#index"
  get '/politician',       to: 'dashboard#show'
  get '/bill',             to: 'bill#index'

  namespace :api do
    namespace :v1 do
      resources :search, only: [:index]
    end
  end
end
