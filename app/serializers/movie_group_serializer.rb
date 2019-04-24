class MovieGroupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :movie
  has_one :group
end
