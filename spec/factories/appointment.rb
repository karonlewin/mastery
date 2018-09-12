require 'faker'

FactoryBot.define do
  factory :appointment do
    client { 'John' }
    scheduled_at  { Time.new + rand(100000) }
    observations { Faker::Pokemon.name + ' tattoo'}
  end
end
