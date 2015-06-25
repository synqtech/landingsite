json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :cost, :price, :msrp
  json.url product_url(product, format: :json)
end
