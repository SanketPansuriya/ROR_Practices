=begin
Exercise 1

Given an array of numbers and a result, return indices of the two numbers such that they sum to the result.

Input: numbers = [2,7,11,15], result = 13
Expected output: [0,2]
Explanation: numbers[0] + numbers[2] = 13

=end

def two_sum(nums, target)
  arr = []
  nums.each_with_index do |value,index|
    y = target - value
    next if y < 0
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
puts results