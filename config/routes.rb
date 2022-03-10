Rails.application.routes.draw do
  
  namespace :api do
    get    'task',         to:'task#index'
    get    'task/:id',     to:'task#show'
    post   'task',         to:'task#create'
    put    'task/:id',     to:'task#update'
    delete 'task/:id',     to:'task#destroy'
  end
end
