FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password { 'password' }
    confirmed_at { DateTime.now }
    # association :studio, strategy: :create
  end
end
