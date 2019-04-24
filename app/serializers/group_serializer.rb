class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :movies
  has_many :users
end
