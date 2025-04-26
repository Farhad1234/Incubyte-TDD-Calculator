# README

This is a dockerized rails app which for the incubyte tdd calculator assigmnent. 

Boilerplate was generated using `rails new . --skip-bundle`
## Usage
* ### Build
    To build the docker image run `docker build -t string-calculator .`
* ### Run
    To run the docker image run `docker run -e RAILS_ENV=development -p 3000:3000 string-calculator`

[//]: # (* ### Web port)
[//]: # (  UI is available at http://localhost:3000, TBD )

[//]: # (* ### Test)
[//]: # (    To run the tests run `docker run -e RAILS_ENV=test -p 3000:3000 string-calculator To be confirmed once rspec is implemented)

[//]: # (Execute in CLI)
[//]: # (   TBD)