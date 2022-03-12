class Api::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy, :task_all]

  def task_all
    render json: {task: @task, objectives: @task.objectives}
  end
  
  def index
    render json: Task.all
  end

  def show
    render json: @task
  end

  def create
    task = Task.new(task_params)
    if (task.save)
     render json: task
    else
      render json: {error:task.errors.full_messages}, status: 422
    end
  end

  def update
    if(@task.update(task_params))
      render json: @task
    else
       render json: {error:@task.errors.full_messages}, status: 422
    end
  end 

  def destroy
    render json: @task.destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :task, :date, :points)
  end

end
