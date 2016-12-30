# README

This README would normally document whatever steps are necessary to get the
application up and running.

[ ![Codeship Status for dschmura/questlove](https://app.codeship.com/projects/d5f91dd0-adc0-0134-bab6-42bf2211c7d1/status?branch=master)](https://app.codeship.com/projects/192563)

This is QuestLove, an app for moderating questions.

APP NAME: Questlove

I decided to name the app Questlove after Ahmir Khalib Thompson, who is know professionally as such. He is 'an American percussionist, multi-instrumentalist, DJ, music journalist, record producer, and occasional actor'. His main job on The Tonight Show is to support the host (Jimmy Fallon) and the guests of the show. This role, along with the improvisational skills as a dj (remixing), both have direct analogies for the app in this brief.  (** If this were an app headed for production, I probably would not go in this direction so we wouldn't have to rename the app later due to Trademark etc...but this is fun.)
https://en.wikipedia.org/wiki/Questlove

* Ruby version
2.4.0

* System dependencies

* Configuration

* Database creation
rake db:create

* Database initialization
rake db:migrate

* Database seeding
rake db:seed

The database is seeded with 

Users:  
  - dschmura
  - attendee
  - moderator
  - presenter

Questions: 
  20 beloning to attendee

* How to run the test suite
rspec (**may show deprication warnings with Ruby 2.4.0)
RUBYOPT="-W0" rspec (run rspec while supressing ruby deprication warnings)

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Working Documents Project

I created a questlove_working_documents which will be used to capture working documents for this project. In it I will keep a developer_journal etc... I am not including it with the source of this app, because it is really an artifact for exploring process, and not directly material to running this application. (It is kind of a 'behind the scenes' thing.)