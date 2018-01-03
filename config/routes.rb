Rails.application.routes.draw do
  get  '/', to: "main#index"
  get  '/signup', to: "users#new"
  post '/signup', to: "users#create"
end
