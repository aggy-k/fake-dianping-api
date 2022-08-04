json.restaurants do
  json.array! @restaurants, partial: "api/v1/restaurants/restaurant", as: :restaurant
end
