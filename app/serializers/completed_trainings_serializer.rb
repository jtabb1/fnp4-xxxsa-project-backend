class CompletedTrainingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :employee
  has_one :task
end
