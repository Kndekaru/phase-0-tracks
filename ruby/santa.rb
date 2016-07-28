class Santa
attr_reader
attr_accessor :gender,:age,:ethnicity
	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end
	def celebrate_birthday
		@age += 1
	end
	def get_mad_at
	end
=begin	
	end
	#getters ans setter
	def gender=(example_genders)
		@gender = example_genders
	def age
		@age
	end
	def enthnicity
		@enthnicity
	end
=end
end


#Claus = Santa.new
#p Claus.speak
#p Claus.eat_milk_and_cookies("chocolate chip")
#santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Attack-helicopter", "prefer not to say", "Mystical Creature (unicorn)", "Congolese", "N/A"]
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