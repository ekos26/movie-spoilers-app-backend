class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username

  has_many :groups
  has_many :comments
  has_many :user_groups
end
