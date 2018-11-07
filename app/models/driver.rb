class Driver
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names
    rides.map {|ride| ride.passenger.name}.uniq
  end

  def total_distance
    distances = rides.map{|ride| ride.distance}
    distances.reduce(:+)
  end

  def self.mileage_cap(distance)
    Driver.all.select do |driver|
      driver.total_distance > distance
    end

  end

end
