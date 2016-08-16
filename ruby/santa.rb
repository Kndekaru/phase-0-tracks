class Santa
	def speak
		print "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		print "That was a good #{cookie}"
	end
	def celebrate_birthday
	end 
	def get_mad_at
	end 
	def age
		@age 
	end
	def ethnicty
		@ethnicity
	end
	def gender=(new_gender)
		@gender = new_gender
	end 

	def initialize(gender,ethnicity)
		print "Initializing Santa instance ..."
		@gender =  gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 
end


#driver code
=begin
test =  Santa.new("agender", "black")
p test.speak
p test.eat_milk_and_cookies("sugar cookie")
miles = Santa.new("agender", "black")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid","Transsexual","Androgyne", "N/A"]
example_ethnicities = ["black", "Latino","Zhuang","Bihari", "white", "Japanese-African", "prefer not to say","Sundanese" ,"Mystical Creature (unicorn)", "N/A"]
	example_genders.length.times do |i|
 	santas << Santa.new(example_genders[i], example_ethnicities[i])
	end
p santas
p miles
test.gender = "cis.male"
=end 
getter = Santa.new("Female","White")

p getter.age
p getter.ethnicty