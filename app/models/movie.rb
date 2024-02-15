class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :location
end
