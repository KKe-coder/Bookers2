Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about', to: 'homes#about'  

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books
  resources :users, only: [:show, :edit, :update, :index]



end