# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :name_list do
    title "MyString"
    names "MyText"
    published false
  end
end
