#miles MCardle-Coe
#Create hangman style guessing game
=begin
create class called hangman
	Def intialize method
		make wrong try counter set to 0
		create a pool of possible words in an array
	end
methiod shuffles array and selects word to be solution 
	def solution
		split word in array down to charcters and tarnsform all charcters into "-"
	ends
	puts "guess place_holder word with guessed letters
	def this well be main logic loop
		while true 
			print "enter word or letter [chances - wrong try ] chances left"
			character = getschomp
		if word.include? char
			if right guess includes  char
				puts this has already been given
				puts try again + place holder method 
			else 
				correct guess = correct guess + char
				placeholder = placeholder method
				puts awesome!  place holder
		end
		unless placeholder.incude "-"
			puts Congrats you won!
		break
	end
else
puts "This word does not contain #{char}"
wrong try +=1
if wrong try == total chances
	puts you lose!
else
	puts try again "placeholder method
end
end
end
=end







