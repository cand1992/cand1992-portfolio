# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    email { Faker::Internet.email }
    body { Faker::Lorem.paragraph }
    subject { Faker::Lorem.sentence }
    name  { Faker::Name.name }
  end
end
