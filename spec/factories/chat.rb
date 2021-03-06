FactoryBot.define do
  factory :chat do
    message { Faker::Lorem.characters(number: 30) }
    user
    room
  end
end
