class Actor < ApplicationRecord
  has_many :jobs
  has_many :movies, through: :jobs

  def self.search(search)
    if search
      Actor.where('name LIKE ?', "%#{search}%")
    else
      Actor.all
    end
  end
end
