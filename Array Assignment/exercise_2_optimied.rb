def isPalindrome(n)
 
    # Find the appropriate divisor
    # to extract the leading digit
    start = Time.now.usec
    divisor = 1
    while (n / divisor >= 10)
        divisor *= 10
    end
    while (n != 0)
         
        leading = n / divisor
        trailing = n % 10
         
        # If first and last digit
        # not same return false
        if (leading != trailing)
            return false
        end
        
        # Removing the leading and
        # trailing digit from number
        n = (n % divisor)/10
         
        # Reducing divisor by a factor
        # of 2 as 2 digits are dropped
        divisor = divisor/100
     end
     puts "Inside function time Consuming: #{Time.now.usec - start}"
    return true
end
start = Time.now.usec
puts isPalindrome(1001)
puts "Total time taken by function calling: #{Time.now.usec - start}"
puts
def isPalindrome1(str)
  start = Time.now.usec
  
  str = str.to_s if str.is_a? Integer 
  len = str.length/2
  
  for a in (1..len)
    return false if str[a-1] != str[-a]
  end
  
  
  puts "Inside function time Consuming: #{Time.now.usec - start}"
  
  return true
end

start = Time.now.usec
puts isPalindrome1(1001)
puts "Total time taken by function calling: #{Time.now.usec - start}"
