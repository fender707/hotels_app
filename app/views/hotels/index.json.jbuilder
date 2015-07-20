json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :rating, :breakfast, :description, :price, :photo, :address
  json.url hotel_url(hotel, format: :json)
end
