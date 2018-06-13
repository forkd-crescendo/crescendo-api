FactoryBot.define do
  factory :favourite do
    artwork_id nil
    created_on { Faker::Date.between(2.days.ago, Date.today) }
  end
end
