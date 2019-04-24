class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :poster, :plot
end
