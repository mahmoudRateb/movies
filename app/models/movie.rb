class Movie < ApplicationRecord
  belongs_to :director
  has_many :jobs
  has_many :actors, through: :jobs
  has_many :movie_locations
  has_many :locations, through: :movie_locations
end
