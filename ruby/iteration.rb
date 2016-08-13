#release 1
odd_numbers = [1,3,7,9,11,13,15]

Pets = { "Spot" => "Dog",
	"Mittens" => "Cat",
	"Kitty" => "Cat",
	"Skip" => "Dog",
	"Duke" => "Dog"
}

odd_numbers.each do |x|
	puts "#{x} is an odd number"
end 

odd_numbers.map! do |odd_numbers|
	odd_numbers + 2 
end 
 p odd_numbers
 p Pets
Pets.each { |x,y| puts "#{x}: #{y}" }
=begin
release 2
test_array  = [2,435,24356,8,23,34,1,2,3,5634234]
1.A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
test_array.delete_if {|x| x < 5}
p test_array
Pets.delete_if {|x,y| x == "Skip" }
2.A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
test_array.keep_if { |x| x == 435}
p test_array
3.A different method that filters a data structure for only items satisfying a certain condition
 
if value is equal to cats code keeps that key-value pair.
Pets.select {|x,y| y == "Cat"}
test_array.select {|x| x > 1 }
can also use select! to return a new hash or array with key-value pair where value is == "Cat" or conditional
Pets.select! {|x,y| y == "Cat"} 
4.
test_array.reject! {|x| x == 2 }
p test_array
=end 