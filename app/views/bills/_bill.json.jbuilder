json.extract! bill, :id, :date, :subtotal, :tax, :discount, :total, :created_at, :updated_at
json.url bill_url(bill, format: :json)
