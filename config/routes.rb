Rails.application.routes.draw do
  
  namespace :api do
    
    get    'task',         to:'task#index'
    get    'task/:id',     to:'task#show'
    post   'task',         to:'task#create'
    put    'task/:id',     to:'task#update'
    delete 'task/:id',     to:'task#destroy'

    get    'objectives',   to: 'objectives#index'
    get    'objectives',   to: 'objectives#show'
    post   'objectives',   to: 'objectives#create'
    put    'objectived',   to: 'objectives#drstroy'

  end
end
