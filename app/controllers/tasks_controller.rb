class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :done]

  def index
    @tasks = Task.all
  end

  def show
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

  end

  def update
    @task.update_attributes(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def done
    @task.update_attributes(done: true)
  end

private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
     params.require(:task).permit(:name, :description, :done)
  end

end
