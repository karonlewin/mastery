FactoryBot.define do
  factory :studio do
    name { Faker::RickAndMorty.location }
  end
end
