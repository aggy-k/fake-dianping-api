json.partial! "api/v1/restaurants/restaurant", restaurant: @restaurant
json.reviews do
  json.array! @restaurant.reviews, partial: "api/v1/reviews/review", as: :review
end
