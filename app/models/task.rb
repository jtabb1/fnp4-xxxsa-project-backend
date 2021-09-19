class Task < ApplicationRecord
  has_many :trainings, dependent: :destroy
  has_many :employees, through: :trainings

  validates :name, presence: true
end
