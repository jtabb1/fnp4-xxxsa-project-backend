class Employee < ApplicationRecord
  has_many :trainings
  has_many :tasks, through: :trainings

  validates :name, presence: true
end
