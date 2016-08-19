=begin
module Shout
 def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
  	words + "!!!" + " :)"
  end
end

p Shout.yelling_happily("Stop")
p Shout.yell_angrily("Hello")
=end
#release3 mixin
