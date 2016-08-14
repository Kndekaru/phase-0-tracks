=begin
pseudocode
define method to take a string 
use .split and reverse to set a new variables  
print variable to display flipped name.
--
define method for vowel/consinant swap to take a split string
declare vowels and consonants as a string value 
use .map to to check the strings
if vowel index is no empty create a variabe to put swapped charcter value in 
  new variable should be equal to index of given split string + 1 
  then return new value
elsif do same for consonants 
else if no changes are made keep string the same.

=end 
def name_swapper(user_name)
  swapped_name = user_name.split(' ').reverse!
  print swapped_name.join(' ')
end
puts  "Please enter your full name!"
user_name = gets.chomp 
name_swapper(user_name)



#consonants = "bcdfghjklmnpqrstvwxy"