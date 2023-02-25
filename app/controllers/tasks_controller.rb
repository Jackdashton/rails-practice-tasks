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

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    id = params[:id]
    # set id variable equal to whatever is in the url id
    @task = Task.find(id)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # No need for app/views/tasks/update.html.erb
    redirect_to task_path(@task)
    # redirects to the object/instance of show page
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
    # see_other responds to HTTP status code - redirection.
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
    # only these 3 params are permitted
  end
end
