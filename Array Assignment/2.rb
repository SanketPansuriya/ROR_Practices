=begin

Given a number n, return true if n is palindrome.

=end

def is_palindrome?(str)
  ## Converting 'str' to String
  str = str.to_s
  
  
  ## return true if 'str' length is 1 
  return true if str.length <= 1
  
  ## return false if first and last digit is not same 
  return false if !(/(\d)(\d*)\1$/.match?(str))
  
  ## sending to recursive manner with removing first and last charecter
  is_palindrome?(str[1...-1])
end


## Second Way

def check_palindrome(string)

  ## Check where 'string' is Interger if Integer then convert it to String
  string = string.to_s if string.is_a? Integer 
  
  ## Storing 'string' into 'str'
  str = string
  
  count = string.length / 2
  
  ## Continue loop until count is not equal 0
  while count != 0
    
    ## Check Regex is match with 'str' if match then remove fist and last charcter in to 'str' if not then return false
    if /(\d)(\d*)\1$/.match?(str) 
      str = str[1...-1]
    else 
      return false
    end
    
    ## Incresing Count
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
