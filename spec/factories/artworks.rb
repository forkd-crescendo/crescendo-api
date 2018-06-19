FactoryBot.define do
  factory :artwork do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
    created_on { Faker::Date.between(2.days.ago, Date.today) }
  end
end
