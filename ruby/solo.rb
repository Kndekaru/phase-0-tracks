=begin
 	Declare/Create car class
	initialize class
		print that class was initialized
		create 4 varibales to set atrributes to
	end method
	make method
		for each folor in array say car comes in that color

	delcare travel method take integer as argument
		add number to milage atrribtes
		retun new milage
	end
	declare repair method takes a string
		return that string was fixed
	endmethod
	declare start method
	returns car has started
	end method
=end	


class Car
	attr_accessor :Make, :Model, :Year, :Milage
	attr_reader :colors
	def initialize(make,model,year,milage)
		puts "Car has been created"
		@make = make
		@year =  year
		@model = model
		@milage = milage
		@colors = ["red","black","blue","green","beige","white"]
	end
	def car_colors
		p "Your #{@Make} comes in these colors below" 
		@colors.each do |color|
			puts color
	end
	end

	def travel(int)
		updated_milage = @milage + int
		updated_milage
	end
	def repair(string)
		"#{string} has been repaired on your #{@make} #{@model}"
	end

	def car_start
		p "The car has started succesfuly"
	end
end
=begin
driver code
new = Car.new('Ford','Focus',1994,75000)
p new.car_colors
p new.travel(4000)
p new.repair("tailgate")
p new.car_start
test = Car.new('Ford','Focus',1994,75000)
puts test.colors
=end
puts "How many vehicles do you wish to enter? please enter an integer "
vehicle_count = gets.chomp.to_i
counter = 0
garage = []
until counter == vehicle_count
	puts "Enter the make of the vehicle"
	user_make = gets.chomp
	puts "Enter the model of the vehicle"
	user_model = gets.chomp
	puts "Please enter production year"
	user_year =  gets.chomp
	puts "Please enter vehicle milage Milage"
	user_milage = gets.chomp
	new_car = Car.new(user_make,user_model,user_year,user_milage)
	garage << new_car
	counter += 1
	p "car has been created"
	p "-------------------------------------------------------------"
end 
p "all cars have been enter to the garage!"
p garage