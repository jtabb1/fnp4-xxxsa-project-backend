class Employee < ApplicationRecord
  has_many :completed_trainings
  has_many :tasks, through: :completed_trainings

  validates :name, presence: true
end
