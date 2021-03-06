# ASSIGNMENT 2
# Create a Vehicle class with instance variable for wheel_count. Assume default value for wheel_count as 2. Create it’s child classes like Bike, Auto, Bus where:
# wheel_count variable is inherited in case of Bike class, since bike also has 2 wheels which is same as that of Vehicle class
# wheel_count variable is overridden in case of Auto and Bus class, since they have 3 and 4 wheels respectively

class Vehicle
  def initialize
    @wheel_count = 2
  end
  def wheel_count
    @wheel_count
  end
  def wheel_count=(value)
    @wheel_count = value
  end
end

class Bike < Vehicle
  def show
    @wheel_count
  end
end

class Auto < Vehicle
  def initialize
    @wheel_count = 3
  end
  def show
    @wheel_count
  end
end

class Bus < Vehicle
  def initialize
    @wheel_count = 4
  end
  def show
    @wheel_count
  end
end

bike = Bike.new
bike.show
bike.wheel_count

bike.wheel_count = 10
bike.wheel_count

auto = Auto.new
auto.show

bus = Bus.new
bus.show
