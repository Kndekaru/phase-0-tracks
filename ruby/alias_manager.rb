

def name_swapper(user_name)
  swapped_name = user_name.split(' ').reverse!
  print swapped_name.join(' ')
end
puts  "Please enter your full name!"
user_name = gets.chomp 
name_swapper(user_name)



#consonants = "bcdfghjklmnpqrstvwxy"