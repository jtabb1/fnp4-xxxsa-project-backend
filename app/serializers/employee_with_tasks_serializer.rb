class EmployeeWithCompletedTrainingsSerializer < ActiveModel::Serializer
  attributes :id, :public_id, :name
  has_many :completed_trainings
  # has_many :tasks
end
