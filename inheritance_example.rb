# attempt on my own

# class Car(input_options)
#   attr_reader speed: direction:
#   def initialize
#     @speed = 0
#     @direction = "north"
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike < Car
#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# car = Car.new
# bike = Bike.new
# p car.honk_horn
# p bike.ring_bell
# p car.accelerate
# p bike.accelerate * 2

# from example taught from Amanda
class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
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
  def initialize
    super
    @fuel = "Unleaded"
    @make = "Chevy"
    @model = "S-10"
    @color = "Red"
    @drive = "Rear"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
car.honk_horn
bike = Bike.new
bike.ring_bell
