class Waiter < ApplicationRecord
  jsonb_accessor :info,
    name: :string,
    price: [:integer, store_key: :p],
    price_in_cents: :integer,
    reviewed_at: :date
end
