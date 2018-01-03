Rails.application.routes.draw do
  get '/', to: "main#index"
  get '/signup', to: "users#new"
end
