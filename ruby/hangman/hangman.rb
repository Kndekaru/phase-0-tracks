#miles MCardle-Coe
#Create hangman style guessing game
class Hangman
	def initialize
		@gChances = 0
		@wrong_guess_counter = 0
		@correct_guess = ' '
		@word_pool = ["afraid", "priviledge","positive" ,"burnt","deception"]
	end 
	def place_holder samle_word, guessed_words
		new_placeholder = " "
		samplewords.chars { |chars| new_placeholder += (guessed_words.include)? char : '-'}

		new_placeholder
	end
	def game_logic
		while true 
			"Please enter a word or letter you have [#{chances - wrong_guess_counter} try left!]"
			char  = gets.chomp
		if word.include? char
			if (correct_guess.include? char)
				puts char + "this answer has already been given!"
				puts "Try another letter or word" + place_holder(word, correct_guess)
			else
				correct_guess = correct_guess + char
				new_placeholder = place_holder(word,correct_guess)
				puts "good answer" + new_placeholder
			end
			unless new_placeholder.include? "-"
				puts "you win!"
			break
		else
			puts "try again" + place_holder(word,correct_guess)
		end
	end

end

yolo = Hangman.new
p yolo




