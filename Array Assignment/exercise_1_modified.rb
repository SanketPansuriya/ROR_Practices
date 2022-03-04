def two_sum(arr, target)
  start = Time.now.usec
  len = arr.length
  arr.each_with_index { |value,index|
    next if value > target
    for i in index...len
      next unless arr[i]+value == target
      puts Time.now.usec - start
      return index,i 
    end
  }
  return "No sum founded"
end


numbers = [11,11,10,5]
result = 15
start = Time.now.usec
p two_sum(numbers, result)
puts "When Function Calling: #{Time.now.usec - start}"



## This below example takes less time when function called its takes 25-50 microsecond most of the time


def twoSum(arr, s)
  start = Time.now.usec
   hashTable = {}

  for i in 0...arr.length
 
     sumMinusTarget = s - arr[i]

    if (hashTable[sumMinusTarget] != nil) 
      puts Time.now.usec - start
      return arr.index(sumMinusTarget), i
    end

    hashTable[arr[i]] = arr[i]

  end
  return "No sum founded"
end


start = Time.now.usec
p twoSum(numbers, result)
puts "When Function Calling: #{Time.now.usec - start}"