class Api::ObjectivesController < ApplicationController
  before_action :set_task 
  before_action :set_objective, only:[:show, :update, :destroy] 


  def index
    @task = Task.find(params[:task_id])
    render json: @task.objectives
  end

  def show
   render json: @objective
  end

  def create
    objective = @task.objectives.new(objective_params)
    if (objective.save)
      render json: objective
    else 
      render json: {errors:objective.errors.full_messages}, status: 422
    end    
  end

  def update
    if (@objective.update(objective_params))
      render json: @objective
    else 
      render json: {errors:@objective.errors.full_messages}, status: 422
    end    
  end

  def destroy
    render json: @objective.destroy
  end

  private

  def set_task
    @task = Task.find(params[:task_id])
  end

  def set_objective
    @objective = @task.objectives.find(params[:id])
  end

  def objective_params
    params.require(:objective).permit(:name)
  end

end
