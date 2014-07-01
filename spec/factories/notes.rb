# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :note do
    patient nil
    user nil
    primary_author "MyString"
    primary_institution "MyString"
    body_text "MyText"
    ocr "MyText"
    type ""
    title "MyString"
    filing_date "2014-07-01 00:53:36"
  end
end
