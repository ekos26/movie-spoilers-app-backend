class User < ApplicationRecord
  has_many :user_groups
  has_many :comments
  has_many :groups, through: :user_groups
  # has_many :movies, through: :comments

  has_secure_password
end
