Rails.application.routes.draw do
  # get 'tasks/title', to "tasks#index"
  # get 'tasks/details'
  # get 'tasks/completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "tasks",  to: "tasks#index"

  get    "tasks/new",      to: "tasks#new" , as: :new_task
  post   "tasks",          to: "tasks#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "tasks/:id",      to: "tasks#show", as: :task

  get    "tasks/:id/edit", to: "tasks#edit"
  patch  "tasks/:id",      to: "tasks#update"

  delete "tasks/:id",      to: "tasks#destroy"
end
