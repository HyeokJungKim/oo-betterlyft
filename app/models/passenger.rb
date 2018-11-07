class Passenger

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    #self references the entire instance created
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def total_distance
    distances = rides.map{|ride| ride.distance}
    distances.reduce(:+)
    # num = 0
    # distances.each do |distance
    #   num += distance
    # end
    # num
  end

  def self.premium_members
    Passenger.all.select do |passenger|
      passenger.total_distance > 100
    end
  end







end
