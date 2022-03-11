Rails.application.routes.draw do
  
  namespace :api do

    get    'task',               to: 'task#index'
    get    'task/:id',           to: 'task#show'
    post   'task',               to: 'task#create'
    put    'task/:id',           to: 'task#update'
    delete 'task/:id',           to: 'task#destroy'

    get     'objectives',        to: 'objectives#index'
    get     'objectives/:id',    to: 'objectives#show'
    post    'objectives',        to: 'objectives#create'
    put     'objectives/:id',    to: 'objectives#update'
    delete  'objectived/:id',    to: 'objectives#drstroy'

  end
end
