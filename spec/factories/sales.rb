FactoryBot.define do
  factory :sale do
    total { Faker::Commerce.price }
    association :client, strategy: :create
    association :store, strategy: :create
    association :user, strategy: :create
  end
end
