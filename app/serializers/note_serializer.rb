class NoteSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :priority
  has_one :pet
end
