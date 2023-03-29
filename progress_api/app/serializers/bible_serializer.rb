class BibleSerializer < ActiveModel::Serializer
  attributes :id, :book, :Chapters, :Verse
end
