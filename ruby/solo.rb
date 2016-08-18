=begin
 	Declare/Create car class
	initialize class
		print that class was initialized
		create 3 varibales to set atrributes to
	end method

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

	def initialize
	"Car has been created"
	@Make = "Ford"
	@model = "Focus"
	@milage = 75000
	end

	def travel(int)
		updated_milage = @milage + int
		updated_milage
	end
	def repair(string)
		"#{string} has been repaired on your #{@Make} #{@Model}"
	end

	def car_start
		"The car has started succesfuly"
	end

end

