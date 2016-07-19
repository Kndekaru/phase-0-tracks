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