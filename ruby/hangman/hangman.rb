#Miles McArdle-Coe 6.6 solo challenge
#gather user input to be passed through classes
puts "type a word for you opponent"
answer_1 = []
answer_2 = gets.chomp.downcase
answer_1.push(answer_2)
class Hangman 
attr_accessor :word_pool, :check_array, :correct_pool, :incorrect_pool
  def initialize(array)
    @word_pool = array
    @correct_pool = []
    @incorrect_pool = []
  end
 #creates and saves a value to present as redacted oppoent word
  def redact
    #@word_pool
    @word_pool[0]
    whole_solution = word_pool[0]
    solution = word_pool[0].chars
    redaction = word_pool[0].chars
    solution.map! do |solution|
    solution = " _ "
    end
    return solution.join
  end
#establishes variable to check answers agaisnt
  def check_game
    @word_pool
    @word_pool[0]
    whole_solution = word_pool[0]
    solution = word_pool[0].chars
    redaction = word_pool[0].chars
  end
#game logic method returns bulk of text
  def logic(check_array)
turns = 7
turn_counter = 0
until turn_counter == 7

  puts "#{turns} turns left"
  puts "Please guess the word or the letter or type solve to attempt to solve the puzzle"
  user_guess = gets.chomp.to_s.downcase       
    if user_guess ==  "solve"
        puts "type the solution"
        solve = gets.chomp
        if solve.chars == check_array
          puts "you win!!!!!!!"
        else
          puts "Wrong!!!!!!!!!"
          break 
        end
      end 
        if user_guess ==  "solve"
        puts "type the solution"
        solve = gets.chomp
        if solve.chars == check_array
          puts "you win!!!!!!!"
        break
     	else
     		puts "you lose!"
     	break
        end
      end 
    if check_array.include? user_guess
      puts "#{user_guess} is a letter in the word!"
      correct_pool.push(user_guess)
      correct_pool.uniq!
      p correct_pool
      puts "#{user_guess} is not in the word" 
      p incorrect_pool
      turns += 0 
      turn_counter += 0 
    else
      puts "#{user_guess} is not in the word" 
      incorrect_pool.push(user_guess)
      incorrect_pool.uniq!
      p incorrect_pool
      puts "#{user_guess} isa letter in the word!"
      p correct_pool
      turns -= 1 
      turn_counter += 1
    end
    puts "--------------------------------------------------------------------------"
  end 
    if turn_counter == 7
      puts 'You lose!!!!!!!' 
    end
    puts "--------------------------------------------------------------------------"
  end
end
#driver code
puts "Welcome to Hangman game"
game =  Hangman.new(answer_1)
puts  "You word is #{answer_2.length} letters long"
p yolo = game.redact 
check_array = game.check_game
game.logic(check_array)

