require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
listing1 = Listing.new("NYC")
listing2 = Listing.new("London")
listing3 = Listing.new("Vegas")

guest1 = Guest.new("Juan")
guest2 = Guest.new("Mike")
guest3 = Guest.new("Kevin")

trip1 = Trip.new("Trip1", guest1, listing1)
trip2 = Trip.new("Trip2", guest2, listing2)
trip3 = Trip.new("Trip2", guest2, listing3)

listing1.guests
listing2.trips
listing1.trip_count
Listing.find_all_by_city(listing1.city)
Listing.most_popular

guest2.trips
guest1.listings
guest1.trip_count
Guest.pro_traveller
Guest.find_all_by_name(guest1.name)


trip1.listings
trip2.guests
binding.pry
0
# Pry.start
