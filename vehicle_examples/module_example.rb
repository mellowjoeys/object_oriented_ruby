module Driveable
  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle
  include Driveable

  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

toyota = Car.new
trike = Bike.new

p toyota.accelerate
p trike.accelerate