puts "String".size  # => 6
a = ""
puts a.empty?

# String Interpolation and String Appending
a << "Hello !!"  ## String Appending
puts "Say #{a}"  
=begin
=> Say Hello !!
We can't get output if we use ' '
=end

# We can substract substring

a << " How are you"
puts a[3,10]  ## => lo !! How 

# String Contains Another String or not
puts a.include?("How") ## => true
puts a.index("How") ## => 9

# rjust and ljust
binary_string = "11010"
puts binary_string.rjust(8, "0") ## => 00011010
puts binary_string.ljust(8, "0") ## => 11010000

# String case 'upcase' 'downcase'
learn1 = "Ruby on Rails"
learn2 = "ruby on rails"
puts learn1.upcase == learn2.upcase  ## => true

# removing white space
a << "\n\n\n"
puts a.strip!  ## => Hello !! How are you

# String Prefix & Suffix
puts a.start_with? "Hello !!" ## => true 
puts a.end_with? "you" ## => true

puts a.delete_suffix(" you")  ## => Hello !! How are
puts a.delete_prefix("Hello !! ") ## => How are you

# Convert a String to An Array of String
p a.split  ## => ["Hello", "!!", "How", "are", "you"]

# Array to String Convertion
p a.split.join(" ")

# String Is A Number or Not
puts "-123".match?(/\A-?\d+\Z/) ## => true

# Iterate Over Characters Of a String in Ruby
p a[0,7].chars  ## => ["H", "e", "l", "l", "o", " ", "!"]


# Convert a String to Upper or Lowercase
puts a.upcase    ## => HELLO !! HOW ARE YOU
puts a.downcase  ## => hello !! how are you


# Create Multiline Strings
b = <<-STRING
aaa
bbb
ccc
STRING

=begin
b => aaa
bbb
ccc
=end

puts %Q(aaa
bbb
ccc
)
=begin
aaa
bbb
ccc
=end

# Replace Text Inside a String Using The Gsub Method
puts a.gsub("Hello", "Heyyy") ## =>  Heyyy !! How are you

# Removing Last Character
puts "abcd??".chomp("?")  ## => abcd?

# counting character

puts a.count('H')  ## => 2