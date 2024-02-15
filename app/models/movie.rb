class Movie < ApplicationRecord
  belongs_to :director
  has_many :actors, through: :jobs
end
