FactoryBot.define do
  factory :store do
    name { Faker::Company.unique.name }
    subdomain { Faker::Company.unique.name }
  end
end
