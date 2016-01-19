json.array!(@coats) do |coat|
  json.extract! coat, :id, :name, :price, :sell, :stock, :date, :info
  json.url coat_url(coat, format: :json)
end
