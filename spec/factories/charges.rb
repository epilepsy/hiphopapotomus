# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :charge do
    service_date "2014-07-01"
    user nil
    code "MyString"
    note nil
  end
end
