FactoryBot.define do
  factory :appointment do
    client { 'John' }
    scheduled_at  { DateTime.new }
    observations { 'Full body dragon tattoo '}
  end
end
