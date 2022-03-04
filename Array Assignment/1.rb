=begin
Exercise 1

Given an array of numbers and a result, return indices of the two numbers such that they sum to the result.

Input: numbers = [2,7,11,15], result = 13
Expected output: [0,2]
Explanation: numbers[0] + numbers[2] = 13

=end

def two_sum(nums, target)
  nums.each_with_index do |value,index|
    ## Difference between target value and current value of array
    y = target - value
    
    ## Skip next part if "y" is nagative
    next if y < 0
    
    ## Check "y" is available in "nums" array if available then return current index of array and index of "y"
    ## or else there is last index iterect and steel not find targeted sum then return False
    if nums.include? y
      return index, nums.index(y)
    elsif nums.length-1 == index
      return "No target sum found"
    end
  end
end

numbers = [10,11,16,5]
result = 15

p two_sum(numbers, result)


# Second Way
results = (0...numbers.size).to_a.combination(2).select { |first, last| numbers[first] + numbers[last] == result }
results.each {|i|
  p i
}


## Explaination :
## (0...number.size) give the range between 0 to number.size
## (0...number.size).to_a is convert into array from range
## combination(2) is perform on array where combination of 2
##    like, 
##      [0, 1]
##      [0, 2]                                                                             
##      [0, 3]                                                                             
##      [1, 2]                                                                             
##      [1, 3]                                                                             
##      [2, 3]
## combination(2).select { |first, last| numbers[first] + numbers[last] == result } will perform on the each combination of array
##         => and return the combition of this array if both value first and last is equal to 'result' value  
##
##