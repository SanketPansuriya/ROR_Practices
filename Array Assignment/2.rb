=begin

Given a number n, return true if n is palindrome.

=end

def is_palindrome?(str)
  str = str.to_s
  return true if str.length <= 1
  return false if !(/(\d)(\d*)\1$/.match?(str))
  is_palindrome?(str[1...-1])
end


## Second Way

def check_palindrome(string)
  string = string.to_s if string.is_a? Integer     
  str = string
  count = string.length / 2
  
  while count != 0
    if /(\d)(\d*)\1$/.match?(str) 
      str = str[1...-1]
    else 
      return false
    end
    
    count -= 1
  end
  return true
end


print "Enter Number: "
str = gets.chomp

puts check_palindrome(str)

puts is_palindrome?(str)

## Simplest way to find Palindrome is below but it's not optimum solution 
## Just because of what if the input is '123 321' or any palindrome string combination those are not like Palindrome number but generate get true answer
puts str == str.reverse
