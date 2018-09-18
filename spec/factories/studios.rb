FactoryBot.define do
  factory :store do
    name { Faker::RickAndMorty.location }
  end
end
