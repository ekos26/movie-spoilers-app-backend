class Movie < ApplicationRecord
  has_many :movie_groups
  has_many :comments
  has_many :groups, through: :movie_groups
end
