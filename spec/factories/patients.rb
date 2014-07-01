# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient do
    given_name "MyString"
    family_name "MyString"
    dob "2014-07-01"
    sex "MyString"
  end
end
