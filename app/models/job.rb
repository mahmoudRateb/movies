class Job < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
end
