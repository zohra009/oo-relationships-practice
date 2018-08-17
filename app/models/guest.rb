require "pry"
class Guest
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def trips
    Trip.all.select{|al_trip| al_trip.guest == self}
  end
  def listings
    trips.map{|match_trip| match_trip.guest}
  end
  def trip_count
    # binding.pry
    trips.length
  end
  # returns an array of all guests who have made over 1 trip
  def self.pro_traveller
    value = Guest.all.select{|freq| freq.trip_count > 1}
  end
  # takes an argument of a name (as a string), returns the all guests with that name
  def self.find_all_by_name(name)
    # binding.pry
    Guest.all.select{|list| list.name == name}
  end
end
