FactoryGirl.define do
  factory :panel do
    name "MyString"
    description "MyText"
    rules "MyText"
    moderator 1
  end
  factory :question do
    question "MyString"
    user nil
  end
  factory :user do
    
  end
end