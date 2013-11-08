# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name {Faker::Name.full_name}
    description {Faker::Dizzleipsum.sentence}
    url {Faker::Internet.http_url}
  end
end
