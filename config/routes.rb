Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb+url to controller#method = view page must match index
  get '/tasks', to: 'tasks#index'

  # We need the #new method to go before show, because otherwise the id would be id=new
  # this doesn't exist obviously, therefore it causes an error.
  get '/tasks/new', to: 'tasks#new'
  # Need a post to submit form, and verb+url = post+tasks isn't taken, therefore use this.
  post 'tasks', to: 'tasks#create'

  # dyanmic reference, with controller method 'show' and html.erb file 'show'
  get '/tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
