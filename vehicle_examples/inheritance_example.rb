class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end


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

class Car < Vehicle
  def initialize(options)
    super()
    @fuel = options[:fuel]
    @make = options[:make]
    @model = options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(options)
    super()
    @type = options[:type]
    @weight = options[:weight]
    @gears = options[:gears]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "ethanol", 
              make: "Toyota",
              model: "Corolla"
              )
car.accelerate
p car
car.honk_horn

bike = Bike.new(
               type: "mountain", 
               weight: 15, 
               gears: 21
               )
bike.accelerate
p bike
bike.ring_bell