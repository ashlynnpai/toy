Rails.application.routes.draw do

  root to: "badges#index"
  get '/courses', to: 'courses#index'
  
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :cities
  end
  
  resources :books, only: :index
  resources :finished_books
end
