class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :poster, :plot, :comments

  has_many :comments
  has_many :groups
end
