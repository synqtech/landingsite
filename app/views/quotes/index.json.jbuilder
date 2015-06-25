json.array!(@quotes) do |quote|
  json.extract! quote, :id, :bill_to, :address_1, :address_2, :postal_code, :province, :quote_number, :note
  json.url quote_url(quote, format: :json)
end
