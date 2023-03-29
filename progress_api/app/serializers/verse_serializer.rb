class VerseSerializer < ActiveModel::Serializer
  attributes :id, :verse, :details
  belongs_to :user
end
