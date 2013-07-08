# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    comment "MyText"
    type ""
    station "MyString"
    line "MyString"
  end
end
