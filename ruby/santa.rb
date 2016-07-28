class Santa

	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity =enthinicty
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..1672)
	end
end

Claus = Santa.new
p Claus.speak
p Claus.eat_milk_and_cookies("chocolate chip")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Attack-helicopter", "prefer not to say", "Mystical Creature (unicorn)", "Congolese" "N/A"]
x == 0
until x == 50
	santas =Santa.new(example_genders,example_ethnicities)
	p "Attributes of santa #{x}"
	p "Age:#{santa.age}"
	p "gender:#{santa.gender}"
	P "enthinicty:#{santa.ethnicity}"
	p "-----------------------------------------"
	x += 1
end