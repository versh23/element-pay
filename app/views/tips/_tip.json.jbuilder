json.extract! tip, :id, :amount, :payment_url, :user_id, :created_at, :updated_at
json.url tip_url(tip, format: :json)
