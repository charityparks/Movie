Rails.application.routes.draw do
  resources :movies, only: [:index, :create, :new]
  resources :actors, only: [:index, :create, :new] do
    resources :roles, only: [:index, :new, :create]

  resources :roles, only: :create
  end
  get '/movies/g_rating', to: 'movies#g_rating'
  get '/movies/pg_rating', to: 'movies#pg_rating'
  get '/movies/r_rating', to: 'movies#r_rating'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

end
