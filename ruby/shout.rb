module Shout
 def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	words + "!!!" + " :)"
  end
end

#test_words = "Whats going on"

p self.yelling_happily("Stop")
p self.yell_angrily("Hello")