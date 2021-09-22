class TrainingsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    render json:  Training
                    # .order("task_id")
                    # .order("error_rate_in_english")
                    # .order("initial_production_rate DESC")
                    .select('tasks.task_name')
                    .select('employees.name')
                    # .select("employees.name, tasks.name")
                    # .select("tasks.name, employees.name")
                    # .select("employees.name")
                    .joins(:employee,:task)
                    # .joins(:task,:employee)
                    # .joins("INNER JOIN employees ON employees.id = trainings.employee_id")
                    # .joins("INNER JOIN tasks ON tasks.id = trainings.task_id")
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
