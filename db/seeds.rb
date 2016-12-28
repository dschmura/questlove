# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
User.create(email: 'dschmura@umich.edu', password: 'password', password_confirmation: 'password')
users = User.create([
    {email: 'attendee@user.com', password: 'attendee', password_confirmation: 'attendee'}, 
    {email: 'moderator@user.com', password: 'moderator', password_confirmation: 'moderator'}, 
    {email: 'presenter@user.com', password: 'presenter', password_confirmation: 'presenter'} ])

  20.times do |q|
    Question.create(question: "#{FFaker::Lorem.sentence}?", user: User.find_by(email: 'attendee@user.com'))
  end


  5.times do |q|
    Panel.create(name: "#{FFaker::Movie.title}?", description: "#{FFaker::HipsterIpsum.paragraph}?", rules: "#{FFaker::HipsterIpsum.paragraph}?", moderator: User.find_by(email: "moderator@user.com"))
  end