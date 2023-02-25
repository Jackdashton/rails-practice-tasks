class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    # set variable equal to params :id to find particular instance
    @task = Task.find(id)
    # individual task, find it using the id variable
  end
end
