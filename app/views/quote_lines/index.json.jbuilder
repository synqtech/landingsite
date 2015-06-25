json.array!(@quote_lines) do |quote_line|
  json.extract! quote_line, :id, :qty, :discount
  json.url quote_line_url(quote_line, format: :json)
end
