=begin
Exercise 1

Write a function to find the longest common prefix string amongst an array of strings.
Input: string = ["challenge","characteristic","champion"] 
Expected output: "cha"

=end


def longestCommonPrefix(arr)
  arr.sort!
  str = ""
  first = arr[0].split('')
  last = arr[-1].split('')

  first.each_with_index {|v,i| 
    if v == last[i]
      str << v
    else
      break;
    end
  }  
  return str == "" ? "No Comman Prefix" : str
end


arr = ["challenge","characteristic","champion"] 


puts longestCommonPrefix(arr)

arr1 = ['abcdef', 'abcde', 'abcdefg']
puts longestCommonPrefix(arr1)

arr2 = ['xyz', 'abc', 'pqr']
puts longestCommonPrefix(arr2)
