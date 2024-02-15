class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  after_commit :update_movie_rating

  def update_movie_rating
    movie.update_rating
  end
end
