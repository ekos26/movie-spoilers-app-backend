class Group < ApplicationRecord
  has_many :movie_groups
  has_many :user_groups
  has_many :movies, through: :movie_groups
  has_many :users, through: :user_groups
end
