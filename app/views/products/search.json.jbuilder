json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :cost, :price, :msrp
  json.thumb_url product.image.url(:thumb)
  json.url product_url(product, format: :json)
end
