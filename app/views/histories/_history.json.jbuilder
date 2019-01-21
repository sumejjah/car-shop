json.extract! history, :id, :user_id, :product_id, :quantity, :date, :created_at, :updated_at
json.url history_url(history, format: :json)
