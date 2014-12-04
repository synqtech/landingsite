json.array!(@distributors) do |distributor|
  json.extract! distributor, :id, :email, :name, :phone, :address_1, :address_2, :company, :zip, :province, :country
  json.url distributor_url(distributor, format: :json)
end
