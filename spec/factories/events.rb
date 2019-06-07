FactoryBot.define do
  factory :event do
    sequence(:title) { |n| "Happy new year #{n}" }
    sequence(:address) { |n| "Some city_#{n}" }
    sequence(:datetime) { |n| "#{n}th day of year" }
  end
end
