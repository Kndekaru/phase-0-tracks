# Miles McArdle-Coe & Kimberly Suazo
#outline from puppy clas
#SPECIES ------------------------
#Canis lupus familiaris

#CHARACTERISTICS ----------------
#Size: Large
#Friendly: yes
#Eye count: 2
#Name: varies
#Color: Brown,white,or black
#Atheletic: Yes

#BEHAVIOR -----------------------
#Jump
#Bark
#Fetch
#Play
#Beg
#Roll over

#declare new class
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
#calls various class methods
spot = Puppy.new 
felix = Puppy.new

spot.fetch("ball")
felix.speak(3)
spot.roll_over
spot.dog_years(4)
felix.bury_toy("bone")

#SPECIES ------------------------
#Catty cat

#CHARACTERISTICS ----------------
#Size: small
#Friendly: yes
#Eye count: 2
#Name: varies
#Color: varies
#Atheletic: no

#BEHAVIOR -----------------------
#Jump
#Play

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
#create array and establish counter
#counter starts at 0
#loops break when counter at 50
cat_array = []
i = 0
until i == 50
  new_cat = Cat.new
  puts "You have created a new cat called #{new_cat}"
  cat_array << new_cat
  i += 1
end
#For all even jump counters print differnt toy.
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