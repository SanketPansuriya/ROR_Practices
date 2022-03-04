=begin
Exercise 3

Reverse only vowels in the given string.

Input: string = "communication"
Expected output: "comminacituon"

=end
def reversevowels(string)
  arr = string.split('')
  vowels = arr.select {|i| i =~ /[aeiou]/i}
  vowels_reverse = vowels.reverse
  
  vowels_index = 0
  arr.each_with_index {|v,i|
    next if v != vowels[vowels_index]
    arr[i] = vowels_reverse[vowels_index]
    vowels_index += 1
  }
  arr.join
end


string = "communication"

p reversevowels(string)