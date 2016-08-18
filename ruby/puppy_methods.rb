class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
 
  def speak(int)
    "Woof! " * int
  end
 
  def roll_over
    "*rolls over*"
  end
  
  def dog_years(age)
    age * 7
  end
  
  def stay
    "dog goes nowhere"
  end
  
end

puppy = Puppy.new 

puppy.fetch("ball")

puts puppy.speak(3)

puts puppy.roll_over

puts puppy.dog_years(12)

puts puppy.stay

class Cars
  
  def initialize
    "New car created"
  end
  
  def start
    "vroom!"
  end
  
  def drive(speed)
    puts "Car is going #{speed} mph."
    speed
  end
  
  def crash
    "Boom!"
  end
  
end

# car = Cars.new
# puts car.start 
# puts car.drive(45)
# puts car.crash 
car_lot = []

5.times do
  car = Cars.new
  car_lot << car
end

car_lot.each do |car|
  puts car.start 
  puts car.crash 
    if car.drive(rand(90)) > 60
      puts "you are going too fast"
    else
      puts "you are following th speed limit"
    end 
end