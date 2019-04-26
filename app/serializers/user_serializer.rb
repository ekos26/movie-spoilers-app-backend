class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username

  has_many :groups
end
