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

