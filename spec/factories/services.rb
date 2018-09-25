FactoryBot.define do
  factory :service do
    name { Faker::Commerce.department }
    price { Faker::Commerce.price }
    association :store, strategy: :create
  end
end
