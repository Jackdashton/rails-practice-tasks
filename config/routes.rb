Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/tasks', to: 'tasks#index'
  # verb+url to controller#method = view page must match index
  get '/tasks/:id', to: 'tasks#show', as: :task
  # dyanmic reference, with controller method 'show' and html.erb file 'show'
end
