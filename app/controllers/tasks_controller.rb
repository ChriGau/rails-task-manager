class TasksController < ApplicationController

  def index
    # LISTS ALL tasks
    @tasks = Task.all
  end

  def show
    # returns the task to show
    @task = Task.find(params[:id])
  end

  def new
    # NEW Step 1 : create new instance
    @task = Task.new
  end

  def create
    # NEW Step 2 : save new instance to db
    Task.create(task_params)
    # when instance is created, go back to list of tasks
    redirect_to tasks_path   # tasks = prefix of action "index"
  end

  def edit
    # EDIT step 1 = get which instance
    @task = Task.find(params[:id])
  end

  def update
    # EDIT step 2 = get data and save
    @task = Task.find(params[:id])
    @task.update(task_params)
    # when instance is updated, go back to list of tasks
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # when instance is deleted, go back to list of tasks
    redirect_to tasks_path
  end

    def task_params
      # for refacto
      # lists parameters which values can be edited
    params.require(:task).permit(:name, :duration)
  end


end
