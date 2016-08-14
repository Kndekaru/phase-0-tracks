=begin
pseudocode
define method to take a string 
use .split and reverse to set a new variables  
print variable to display flipped name.
---
release 2
refactored code for split to fit vowel/consonant change method.
start a loop do 
take user inut 
have loop break when user types quit
create variable set equal to user input to take .downcase.split(' ')
use .reverse to flip array values
  iterate through new array using .map! 
  pass putput to alias vreator methd vowel/consonant
push to storage array methods

---
define method for vowel/consinant swap to take a split string
declare vowels and consonants as a string value 
use .map to to check the strings
if vowel index is no empty create a variabe to put swapped charcter value in 
  new variable should be equal to index of given split string + 1 
  then return new value
elsif do same for consonants 
else if no changes are made keep string the same.

=end 
=begin
#refactor as a block lower in code to feed to alias creator method.
def name_split(user_name)
  swapped_name = user_name.split(' ').reverse!
  print swapped_name.join(' ')
end
puts  "Please enter your full name!"
user_name = gets.chomp 
name_swapper(user_name)
=end
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
#release 1 & 2
#add values to hash to be printed by second method
def add_to_hash(storage_hash, name, new_name)
  storage_hash[name] = new_name
end
#prints each key-value pair
def name_print(storage_hash)
  storage_hash.each do |key, value|
    puts "#{key} is now known as #{value}."
   end
end
storage_hash = {}
#loop to take multiple names until quit is typed
Create a loop 
loop do
  puts "Please enter the name you wish to hide!? (When complete type 'quit')"
  name = gets.chomp
  break if name == "quit"
    name_array = name.downcase.split(' ')
    name_array.reverse!
    name_array.map! do |item|
      name_split = item.split('')
      alias_creator(name_split)
    new_name_array = name_split.join('').capitalize
  end
    new_name = name_array.join(" ")
    add_to_hash(storage_hash, name, new_name)
end
name_print(storage_hash)