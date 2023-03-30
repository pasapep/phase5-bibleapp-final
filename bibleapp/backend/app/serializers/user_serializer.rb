class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :progress, :verses

  def progress
    read_verses = object.verses.uniq.count
    (read_verses.to_f / 31102) * 100.0
  end
end
