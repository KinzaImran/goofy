json.array!(@products) do |product|
  json.extract! product, :id, :name, :user_id, :description, :subcategory_id, :initial_price, :selling_price, :availibility, :opening_date, :closing_date
  json.url product_url(product, format: :json)
end
