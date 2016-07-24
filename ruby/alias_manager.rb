#take input and have names stored as variables
#Use split to create arrays
#iterate throught the array  and check charcters equvivlancy to the vowel value via a method
#have method convert vowels to next value
#join these new letters toegtehr 
#repeat this process for consonants and store  bow in new variables

#modify user interface to take quit as a valid option
# create an empty hash for name storage 
#store old and modified names into hash for later access

alias_hash = {}
def name_return(alias_hash)
  alias_hash.each do |key, value|
    puts "#{key} is also known as #{value}."
   end
end
def modify_hash(alias_hash, name, new_name)
  alias_hash[name] = new_name
end
def create_alias(name_split)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxy"
  item_split.map! do |string|
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
loop do
  puts "Please eneter all names you wish to hide,when finsihed type quit"
  name = gets.chomp
  break if name == "quit"
  alias_array = name.downcase.split(' ')
  alias_array.reverse!

 alias_array.map! do |item|
    name_split = item.split('')
    create_alias(name_split)
  new_name_array = name_split.join('').capitalize
  end
  new_name = alias_array.join(" ")
  modify_hash(alias_hash, name, new_name)
end
name_return(alias_hash)