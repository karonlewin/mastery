FactoryBot.define do
  factory :employee do
    name { Faker::FunnyName.unique.name }
  end
end
