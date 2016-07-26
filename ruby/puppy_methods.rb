class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
  
  def speak(i)
    i.times {puts "Woof!"}
  end   
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(age)
    dog_age = age * 7
    dog_age
  end
  def bury_toy(item)
    puts "I buried the #{item} in the back yard"
    item
  end
end 

spot = Puppy.new 
felix = Puppy.new

spot.fetch("ball")
felix.speak(3)
spot.roll_over
spot.dog_years(4)
felix.bury_toy("bone")

class Cat
  
  def initialize
    puts "Creating new cat instance"
  end
  
  def jump(i)
    puts "The cat jumps #{i} times!"
  end
  def play(toy)
    puts "The cat is playing with #{toy}"
  end
end
cat_array = []
i = 0
until i == 50
  new_cat = Cat.new
  puts "You have created a new cat called #{new_cat}"
  cat_array << new_cat
  i += 1
end

jump_count= 1
cat_array.each do |y|
  y.jump(jump_count)
  jump_count += 1
  if jump_count.even?
    y.play("yarn")
  else  
    y.play("ball")
  end   
end   