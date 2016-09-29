json.extract! restaurant, :name, :address, :id

json.up_votes restaurant.votes_for.count

if user_signed_in?
  json.up_voted current_user.voted_for? restaurant
end