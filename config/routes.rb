Rails.application.routes.draw do
  get  '/', to: "main#index"
  get  '/signup', to: "users#new"
  post '/users', to: "users#create"

  get '/dashboard', to: "dashboard#index"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :search, only: [:index]
    end
  end
end
