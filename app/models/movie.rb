class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :location
  has_many :actors, through: :jobs
end
