Rails.application.routes.draw do
  get  '/', to: "main#index"
  get  '/signup', to: "users#new"
  post '/users', to: "users#create"

  get '/dashboard', to: "dashboard#index"
end
