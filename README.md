# README

This application is working with Docker.

docker-compose up should build the dependencies and run the application

- To run the necessary tasks (files are included in git repo and can be updated)
1. rake db:import_movies
2. rake db:import_reviews

- /movies should show all the movies rated by descending order by average_rating
- /actors should show all actors that can be searched by name
