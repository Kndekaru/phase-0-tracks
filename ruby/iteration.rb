#Done by Miles Mcardle-Coe and Kimberly Sauzo on 7/19/2016

prime_numbers = [2,3,5,7,11,13]

prime_numbers.each do |x|
  puts "#{x} is a prime number."
end

prime_numbers.map! do |prime_numbers|
  puts prime_numbers
  prime_numbers + 1
end

puts prime_numbers


Family = { "Peter" => "dad",
  "lois" =>  "mom",
  "Chris" => "brother",
  "Meg" => "sister",
  "Stewey" => "brother",
  "Brian" => "dog"
  
  }

Family.each { |x,y| puts "#{x}: #{y}" }
#release 2
#1.
prime_numbers.delete_if { |x| x >= 5 }
puts prime_numbers
#2.
#keeps if value is equal to mom 
#Family.keep_if {|x,y| y == "mom"}
#puts Family

#3
#returns new hash with changes to reflect conditional statement if evalutated as true
#Family.select! {|x,y| y == "sister" }
#puts Family

#4
#returns new hash with changes to reflect conditional statement. In this case will remove "Brian" key and value because it is evaluated as true and the others as false. 
Family.reject! {|x,y| y == "dog"}
puts Family

