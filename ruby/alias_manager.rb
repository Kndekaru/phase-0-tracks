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

def name_split(user_name)
  swapped_name = user_name.split(' ').reverse!
  print swapped_name.join(' ')
end
puts  "Please enter your full name!"
user_name = gets.chomp 
name_swapper(user_name)

def alias_creator(name_split)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxy"

  name_split.map! do |string|
    if vowels.index(string) != nil
      new_vowel = vowels.index(string) + 1
        string = vowels[new_vowel]
    elsif consonants.index(string) != nil
      new_consonant = consonants.index(string) + 1
      string = consonants[new_consonant]
    else
      string = string
    end
  end
end