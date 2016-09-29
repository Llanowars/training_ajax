json.restaurants do
  json.array! @restaurants do |restaurant|
    json.partial! "restaurants/restaurant", restaurant: restaurant
  end
end