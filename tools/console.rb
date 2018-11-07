require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brian = Passenger.new("Brian")
eric = Passenger.new("Eric")
carlo = Passenger.new("Carlo")

jessie = Driver.new("Jessie")
manny = Driver.new("Manny")

ride1 = Ride.new(jessie, brian, 100.0)
ride2 = Ride.new(jessie, carlo, 50.0)
ride4 = Ride.new(jessie, brian, 750.0)
ride5 = Ride.new(manny, eric, 3.0)
ride3 = Ride.new(manny, carlo, 150.0)

# Put your variables here~!

binding.pry
