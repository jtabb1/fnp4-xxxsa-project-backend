class TrainingsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    # render json: Training.all
    render json: Training.order("task_id").order("error_rate_in_english").order("initial_production_rate DESC")
  end
  
  def create
    training = Training.create!(training_params)
    render json: training.task, status: :created
  end

  private

  def training_params
    params.permit(:employee_id, :task_id)
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
