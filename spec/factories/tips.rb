FactoryBot.define do
  factory :tip do
    amount { "MyString" }
    payment_url { "MyString" }
    user { nil }
  end
end
