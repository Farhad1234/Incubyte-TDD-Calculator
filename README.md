# README

This is a dockerized rails app which for the incubyte tdd calculator assigmnent. 
It also includes a simple UI built using sinatra

Boilerplate was generated using `rails new . --skip-bundle`
## Usage
* ### Build
    To build the docker image run `docker build -t string-calculator .`

* ### Run
    To run the docker image run `docker run --rm --name string-calculator -e RAILS_ENV=development -p 4567:4567 string-calculator`

* ### Web port
    A simple UI is available at http://localhost:4567, this is mostly untested, but should work.

* ### Test
    * To run the tests you must first start the docker with `docker run --rm --name string-calculator -e RAILS_ENV=development -p 4567:4567 string-calculator`
    * run `bundle exec rspec` inside the docker

* ### Execute in CLI
  * To execute in the CLI, you must first start the docker with `docker run --rm --name string-calculator -e RAILS_ENV=development -p 4567:4567 string-calculator`
  * You can then open the rails console by running `bundle exec rails c`
  * Instantiate a calulator object like `calc = StringCalculator.new`
  * Call the add function `calc.add('1,2,3,4,5')`

Bear in mind, I have not run this locally, only inside a docker. If you are running this locally, the steps will be different. You can probably get it working by running:
  * `bundle install`
  * `bundle exec rails c` or `rails c` to access the console
  * `bundle exec rspec` or `rspec` to run the tests
  * `bundle exec ruby app.rb -o 0.0.0.0` to access the webpage via the browser