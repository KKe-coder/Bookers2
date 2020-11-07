Rails.application.routes.draw do
  get 'users/show'
  root to: 'homes#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books, only: [:new, :create, :index, :show, :destroy]

end