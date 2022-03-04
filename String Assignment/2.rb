=begin
Exercise 2

Given a sentence, return the length of the last word in the sentence.
Input: sentence = “       This   is   my  ruby string     practical  assignment   ”
Expected output: 10

=end

def lastWordLength(string)
  arr = string.split(' ')
  arr[-1].length
end


sentence = "       This   is   my  ruby string     practical  assignment   "
p lastWordLength(sentence)