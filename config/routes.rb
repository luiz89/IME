Rails.application.routes.draw do
  get 'user/movies' => "user_movies#index"

  devise_for :users
  resources :directors
  resources :actors
  #get 'movies/index'
  get 'movies' => "movies#index"

  root 'movies#index'

  #get 'movies/new'
  get 'movies/new' =>"movies#new"

  #get 'movies/show'
  get 'movies/:id' => "movies#show"

  #get 'movies/create'
  post 'movies' => "movies#create"

  get 'movies/:id/edit' => "movies#edit"

  put 'movies/:id/' => "movies#update"

  post 'movies/:id/classifications' =>"movies#create_classification"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
