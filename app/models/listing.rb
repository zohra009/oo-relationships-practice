# create files for your ruby classes in this directory
require "pry"
class Listing
attr_accessor :city

  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  #returns an array of all guests who have stayed at a listing
  def trips
    Trip.all.select{|al_trip| al_trip.listing == self}
  end
  def guests

    trips.map{|match_trip| match_trip.guest}
    # binding.pry
  end

  def trip_count
    trips.length
  end
  def self.find_all_by_city(city)
    Listing.all.select{|list| list.city == city}
  end
  # finds the listing that has had the most trips
  def self.most_popular
    value = Listing.all.sort{|freq| freq.trips.count} #gives all listing of trips in interger thnkx to.count
    value.last #gives the last thing that is freq on the list
    # binding.pry
  end

end
