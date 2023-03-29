class StatusSerializer < ActiveModel::Serializer
  attributes :id, :progress
  has_one :user
end
