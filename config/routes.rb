Rails.application.routes.draw do
  
  namespace :api do

    get    'tasks_all/:id',      to: 'tasks#task_all'
    get    'tasks',              to: 'tasks#index'
    get    'tasks/:id',          to: 'tasks#show'
    post   'tasks',              to: 'tasks#create'
    put    'tasks/:id',          to: 'tasks#update'
    delete 'tasks/:id',          to: 'tasks#destroy'

    get     'objectives',        to: 'objectives#index'
    get     'objectives/:id',    to: 'objectives#show'
    post    'objectives',        to: 'objectives#create'
    put     'objectives/:id',    to: 'objectives#update'
    delete  'objectived/:id',    to: 'objectives#drstroy'

  end
end
