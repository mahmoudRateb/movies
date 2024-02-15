class DropColumnLocationIdFromMovies < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :location_id, :bigint
  end
end
