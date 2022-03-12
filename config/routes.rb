Rails.application.routes.draw do
  
  namespace :api do

    get    'tasks_all/:id',      to: 'tasks#task_all'
    get    'tasks',              to: 'tasks#index'
    get    'tasks/:id',          to: 'tasks#show'
    post   'tasks',              to: 'tasks#create'
    put    'tasks/:id',          to: 'tasks#update'
    delete 'tasks/:id',          to: 'tasks#destroy'

    get     'tasks/:task_id/objectives',        to: 'objectives#index'
    get     'tasks/:task_id/objectives/:id',    to: 'objectives#show'
    post    'tasks/:task_id/objectives',        to: 'objectives#create'
    put     'tasks/:task_id/objectives/:id',    to: 'objectives#update'
    delete  'tasks/:task_id/objectives/:id',    to: 'objectives#destroy'

  end
end
