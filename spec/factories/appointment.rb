require 'faker'

FactoryBot.define do
  factory :appointment do
    random_time_factor = Random.rand(1..20)

    client { Faker::FunnyName.unique.name }
    start_at  { Faker::Date.between(random_time_factor.days.ago, DateTime.current) }
    end_at  { Faker::Date.between(random_time_factor.days.ago, DateTime.current) }
    observations { Faker::Pokemon.name + ' tattoo'}
    # association :store, strategy: :build
    association :user, strategy: :build
  end
end
