require 'csv'

namespace :db do
  desc "Importing the movies.csv file into the database"
  task import_movies: :environment do
    csv_content = CSV.read('movies.csv')
    csv_content.shift
    csv_content.each do |row|
      puts "Importing country #{row[-1]}..."
      country_field = row[-1]
      country = Country.find_or_create_by(name: country_field)

      puts "Importing location #{row[-2]}..."
      location_field = row[-2]
      location = Location.find_or_create_by(name: location_field, country: country)

      puts "Importing actor #{row[-3]}..."
      actor_field = row[-3]
      actor = Actor.find_or_create_by(name: actor_field)

      puts "Importing director #{row[-4]}..."
      director_field = row[-4]
      director = Director.find_or_create_by(name: director_field)

      puts "Importing movie info..."
      movie_name = row[0]
      movie_description = row[1]
      movie_year = row[2]
      movie = Movie.find_or_create_by(name: movie_name, description: movie_description, year: movie_year, location: location, director: director)

      puts "Importing movie actors..."
      Job.find_or_create_by(movie: movie, actor: actor)
    end
  end

  desc "TODO"
  task import_reviews: :environment do
  end
end
