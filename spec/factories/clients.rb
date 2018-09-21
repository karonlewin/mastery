FactoryBot.define do
  factory :client do
    name { Faker::FunnyName.unique.name }
    mobile_number { Faker::PhoneNumber.cell_phone }
  end
end
