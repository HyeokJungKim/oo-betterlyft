class Ride

  attr_reader :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  #Even though Ride.all is not defined in the Read-me, Ride.all is needed to build out the relationships between the models since Ride is the join table/Single Source of Truth. (Which means other classes need to access all the Rides.)
  def self.all
    @@all
  end

  def self.average_distance
    distances = @@all.map do |ride|
      ride.distance
    end
    distances.reduce(:+)/@@all.count
    #another way
    # arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end
end
