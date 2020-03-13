Rails.application.routes.draw do
  root "welcome#home"

  resources :actors do
    resources :roles
  resources :roles

  end


  get '/movies/g_rating', to: 'movies#g_rating'
  get '/movies/pg_rating', to: 'movies#pg_rating'
  get '/movies/r_rating', to: 'movies#r_rating'

  resources :movies

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/auth/:provider/callback', to: 'sessions#create'

end
