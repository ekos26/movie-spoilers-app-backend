class MovieGroup < ApplicationRecord
  belongs_to :movie
  belongs_to :group
end
