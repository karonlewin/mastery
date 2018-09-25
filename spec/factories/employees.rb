FactoryBot.define do
  factory :employee do
    name { Faker::FunnyName.unique.name }
    association :store, strategy: :create
  end
end
