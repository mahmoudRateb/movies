class MakeAverageColumnFloat < ActiveRecord::Migration[7.1]
  def change
    remove_index :movies, :average_rating
    remove_column :movies, :average_rating
    add_column :movies, :average_rating, :float
    add_index :movies, :average_rating
  end
end
