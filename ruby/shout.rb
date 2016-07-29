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
module Shout

  def yell_angrily(words)
    puts words + " !*#@ !!!" + " :("
  end

    def yelling_happily(words)
    puts words + " YAAAAY! " + " :)"
  end

end
class Maniac
  include Shout
end

class Kids_at_play
  include Shout
end

yell_1= Maniac.new
yell_1.yell_angrily("Use your turn signal")

yell_2 = Kids_at_play.new
yell_2.yelling_happily("This is fun")