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
