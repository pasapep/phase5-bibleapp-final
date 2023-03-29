class TablebookSerializer < ActiveModel::Serializer
  attributes :id, :date_started
  has_one :bible
  has_one :user
end
