#paired with Nick Reis
#method defines and comapres string gathere din ham_adopt variable
def Ham_good(str)
  if (str == "Yes" || str == "Y")
    print "This hamster is fit for adoption"
  else
    print "The Hamster is not fit for adoption"
  end
end
  #gathers all hamster meta data
print "What is the hamsters name? "
ham_name = gets.chomp

print "How loud on a scale of 1 to 10 is this hamster? "
ham_noise = Integer(gets.chomp)

print "What color is the fur of this hamster? "
ham_color = gets.chomp

print "Is this hamster a good fit for adoption? Type Yes or No "
ham_adopt = gets.chomp
  
print "Estimate the age of this hamster in years "
ham_age = gets.chomp
if ham_age == ""
  ham_age = nil
end
#return bulk data in readbale format
puts "#{Ham_good(ham_adopt)},this hamsters name is #{ham_name}. He/She has #{ham_color} colored fur and is roughly #{ham_age} years old. On a scale from 1-10 the hamster is a #{ham_noise} when it comes to noise."
