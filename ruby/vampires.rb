# Miles McArdle-coe
#Gets input for vampire screening

puts "How many employees will be processed?"
potential_users = Integer(gets.chomp)

until potential_users <= 0

puts "what is your name?"
name = gets.chomp

puts "How old are you?"
age =  Integer(gets.chomp)

puts " what year were you born?"
birth_year = Integer(gets.chomp)

puts "Would you like and order of  garlic bread?"
gar_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance plan?"
insurance = gets.chomp

#age correction to search for vampire
age_correct = (DateTime.year - birth_year) == age

	if age && (gar_bread || insurance)
		puts "probabaly not a vampire"
	elsif !age_correct && (garlic || insurance)
		puts "probabaly a vampire"
	elsif !age_correct && !gar_bread && insurance
		puts "Almost certainly a vampire"
	elsif name
		puts "definetly a vampire"
	elsif 
		puts "Inconclusive results"
	end


	potential_users -= 1
end 
		


		


