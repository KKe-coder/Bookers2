Rails.application.routes.draw do
  root to: 'homes#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]

  get '/users/:id', to: 'users#show'

end