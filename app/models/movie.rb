class Movie < ApplicationRecord
  belongs_to :director
  has_many :jobs
  has_many :actors, through: :jobs
  has_many :movie_locations
  has_many :locations, through: :movie_locations
  has_many :reviews

  def update_rating
    update(average_rating: reviews.average(:stars))
  end

  def self.update_all_ratings
    find_each(&:update_rating)
  end
end
