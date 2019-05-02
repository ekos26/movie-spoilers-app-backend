class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username

  has_many :groups
  has_many :comments
end
