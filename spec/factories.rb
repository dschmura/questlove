FactoryGirl.define do
  factory :panel do
    name "MyString"
    description "MyText"
    rules "MyText"
    moderator 1
  end
  factory :question do
    question "MyString"
    user 1
    status 'pending'
  end
  factory :user do
    email 'attendee@user.com'
    password 'password'
    pasword_confirmation 'password'
  end
end