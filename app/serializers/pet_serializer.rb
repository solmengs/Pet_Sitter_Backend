class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :type, :age
  has_one :owner
end
