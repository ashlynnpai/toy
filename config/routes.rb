Rails.application.routes.draw do

  root to: 'books#index'
  
  get '/badges', to: 'badges#index'
  get '/courses', to: 'courses#index'
  
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :cities
  end
  
  resources :books

  resources :finished_books
end
