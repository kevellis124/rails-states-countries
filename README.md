# States and countries

# Running the app
We use a postgres db container for development. You'll need to run some database commands
once the db container is running:
  
* `docker-compose up db`
* `docker-compose build web`
* `docker-compose run --rm web rake db:create`
* `docker-compose run --rm web rake db:migrate`

finally you can run the application as:
`docker-compose up web`
### Using docker:
`docker-compose up` should start both the db and the app on your localhost

# Testing the app
* `docker-compose exec web bundle exec rspec <file name>` will test a specific file 
* `docker-compose exec web bundle exec rspec` will test all files
