module Print
  def sayHello
    puts "Hello"
  end
  
  def sayHi 
    puts "Hii"
  end
  
  def print(words)
    puts words
  end
end

class Sys
  extend Print
  include Print # mixin
end
  
  
Sys.sayHello

Sys.new.sayHi

Sys.print("Hello World")

