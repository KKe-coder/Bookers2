Rails.application.routes.draw do
  root to: 'homes#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books
  resources :users, only: [:show, :edit, :update]

  get '/users/:id', to: 'users#show'
  get '/books/:id', to: 'books#show'
  get '/home/about', to: 'homes#show'

end