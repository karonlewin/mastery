require 'faker'

FactoryBot.define do
  factory :appointment do
    random_time_factor = Random.rand(1..4)

    client { 'John' }
    start_at  { Faker::Date.between(random_time_factor.days.ago, DateTime.current) }
    end_at  { Faker::Date.between(random_time_factor.days.ago, DateTime.current) }
    observations { Faker::Pokemon.name + ' tattoo'}
  end
end
