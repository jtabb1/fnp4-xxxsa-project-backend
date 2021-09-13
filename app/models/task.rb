class Task < ApplicationRecord
  has_many :trainings
  has_many :employees, through: :trainings

  validates :name, presence: true
end
