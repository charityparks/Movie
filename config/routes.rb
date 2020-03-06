Rails.application.routes.draw do
  resources :movies, only: :index
  resources :actors, only: [:index, :create, :new] do
    resources :roles, only: [:index, :new, :create]
  end
  resources :roles, only: :create


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
