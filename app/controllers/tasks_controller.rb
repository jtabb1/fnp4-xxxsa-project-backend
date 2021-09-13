class TasksController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    render json: Task.all
  end

  def destroy
    task = find_task
    task.destroy
    head :no_content
  end

  private

  def find_task
    Task.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Task not found" }, status: :not_found
  end

end
