class Task < ApplicationRecord
  has_many :completed_trainings
  has_many :employees, through: :completed_trainings

  validates :name, presence: true
end
