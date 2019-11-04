json.extract! review, :id, :rate, :text, :order, :created_at, :updated_at
json.url review_url(review, format: :json)
