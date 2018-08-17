require "pry"
class Trip
  attr_accessor :name, :guest, :listing
  @@all = []
  def initialize(name, guest, listing)
    @name = name
    @guest = guest
    @listing = listing
    @@all << self
  end
  def self.all
    @@all
  end
  def listings
    Trip.all.select{|lis| lis.listing == self.listing} #we select for listing and se if it equ's the listing of the instance method
  end
  def guests
    # binding.pry
    Trip.all.select{|lis| lis.guest == self.guest}
  end


end
