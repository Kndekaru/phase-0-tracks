class Santa
attr_reader :age,:ethnicity
attr_accessor :gender
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
#getter setter methods
=begin	 
	def age
		@age 
	end
	def ethnicty
		@ethnicity
	end
	def gender=(new_gender)
		@gender = new_gender
	end 
=end
	def initialize(gender,ethnicity)
		print "Initializing Santa instance ..."
		@gender =  gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end 
end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid","Transsexual","Androgyne", "N/A"]
example_ethnicities = ["black", "Latino","Zhuang","Bihari", "white", "Japanese-African", "prefer not to say","Sundanese" ,"Mystical Creature (unicorn)", "N/A"]

#driver code
=begin
test =  Santa.new("agender", "black")
p test.speak
p test.eat_milk_and_cookies("sugar cookie")
miles = Santa.new("agender", "black")
santas = []
	example_genders.length.times do |i|
 	santas << Santa.new(example_genders[i], example_ethnicities[i])
	end
p santas
p miles

=end 
=begin
#getter an setters
test =  Santa.new("agender", "black")
getter = Santa.new("Female","White")
#p getter.age
#p getter.ethnicity
test.gender = "cis.male"
p test.gender
=end
#use .sample to gen random element from array
X = 0
	until X == 50
		santa_roster = Santa.new(example_genders.sample,example_ethnicities.sample)
		puts "Attributes of santa #{X}"
		puts "Age:#{santa_roster.age}"
		puts "Gender:#{santa_roster.gender}"
		puts "Enthnicity:#{santa_roster.ethnicity}"
		puts "-----------------------------------------"
		X += 1
	end