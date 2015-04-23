Rails.application.routes.draw do

  root to: 'badges#test'
  
  get '/badges', to: 'badges#index'
  get '/courses', to: 'courses#index'
  
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :cities
  end
  
  resources :books

  resources :finished_books
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
