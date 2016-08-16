class Santa
	def speak
		print "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}"
	end
	def initialize
		print "Initializing Santa instance ..."
	end 
end

test =  Santa.new

p test.speak
p test.eat_milk_and_cookies("sugar cookie")