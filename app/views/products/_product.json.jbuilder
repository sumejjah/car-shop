json.extract! product, :id, :name, :description, :availability, :code, :created_at, :updated_at, :price, :quantity
json.url product_url(product, format: :json)
