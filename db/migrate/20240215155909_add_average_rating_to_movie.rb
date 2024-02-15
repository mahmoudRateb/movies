class AddAverageRatingToMovie < ActiveRecord::Migration[7.1]
  def change
    add_index :reviews, :stars
    add_column :movies, :average_rating, :integer
    add_index :movies, :average_rating
  end
end
