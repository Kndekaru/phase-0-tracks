#Miles McArdle-Coe Hadjir Mashiri
# Virus Predictor

# I worked on this challenge [by myself, with: Hadjir Mashiri ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# while in the same directory it allows two files to access each others information.
# Require works in a simialr way when we dont have a relative or absolute path  path it will search for the file in $LOAD PATH.
 require_relative 'state_data'

class VirusPredictor
  # Initialize method takes 3 arguments and creates/gives our data values from state_date.rb to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # returns our 2 methods we declare later in our class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
 #This takes our instance variables taken earlier frm state data and depending on pop density for each state we get a value for number of deaths.
 #prints a statement reflecting what has been calculated.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #takes two arguments to find our virus spread speed  in each state based primarily on the pop density it retuns a value for speed 
  #then returns outout based on speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end 
STATE_DATA.each do |state_key,state_value|
  state = VirusPredictor.new(state_key,state_value[:population_density],
    state_value[:population])
  state.virus_effects
end 


#=======================================================================
# Reflection Section
# the rocket syntax must be used for the states because they are not symbols. The other syntax of key: value can be used for the nested hash because symbols are used as keys
#require_relative  allows us to pull data/code from another file in some cases another directory and allows the infiormation to be used together.Require allows us to allows us to pull code from built in ruby features rather than indicated files. 
# few ways to iterate through a hash are using the built it .each and .map methods, the former will loop through each key value pair without modifyinig the hash while the latter is a destructive version 
#What was odd was that they called instance variables as parameters even though when we had them initialized in a method. having them called through the program was redundant.
#the concepts i solidified the most was my understanding of require and require_relative and how they differ cn cause the program to behave. i also became more clear  about scope and how private effects the data in our class nd how we can navigate around that to make working code as well as how different e;ements of our code can be given state.