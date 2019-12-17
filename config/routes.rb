Rails.application.routes.draw do
  get '/posts', to: 'posts#index'
  get 'posts/new'
  post 'posts/new', to: 'posts#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  root to: 'posts#index'

  resources :users, only: [:new, :create, :show]
  resources :posts, only: [:new, :create, :index]
end
