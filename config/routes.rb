Rails.application.routes.draw do

  root to: "badges#index"
  get '/courses', to: 'courses#index'
  
end
