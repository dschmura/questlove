FactoryGirl.define do
  factory :panel_question do
    panel nil
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
    user 1
  end
  factory :user do
    email 'attendee@user.com'
    password 'password'
    pasword_confirmation 'password'
  end
end