FactoryGirl.define do

  factory :vote do
    user nil
    question nil
  end

  factory :panel do
    name "MyString"
    description "MyText"
    rules "MyText"
    moderator 1
  end
  factory :question do
    question "MyString"
    association :user, factory: :user
    status 'pending'
  end
  factory :user do
    email 'attendee@user.com'
    password 'password'
    pasword_confirmation 'password'
  end
end