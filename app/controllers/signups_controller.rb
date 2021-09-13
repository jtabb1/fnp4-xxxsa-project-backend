class Completed_trainingsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    completed_training = Completed_training.create!(completed_training_params)
    render json: completed_training.task, status: :created
  end

  private

  def completed_training_params
    params.permit(:employee_id, :task_id)
  end

  def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
  
end
