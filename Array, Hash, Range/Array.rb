#[](*args)
Array.[]( 1, 'a', /^A/)  # => [1, "a", /^A/]
Array[ 1, 'a', /^A/ ]    # => [1, "a", /^A/]
[ 1, 'a', /^A/ ]         # => [1, "a", /^A/]

#Array.new
a = Array.new([:foo, 'bar', 2]) # => [:foo, "bar", 2]
a.class

#array & other_array → new_array
[0, 1, 2, 3] & [1, 5]  # => [1]

#array * n → new_array
a * 2 # => [:foo, "bar", 2, :foo, "bar", 2]

# +
[0, 1, 2] + [3, 4, 5]  #=> [0, 1, 2, 3, 4, 5]

# -
[1, 4, 5] - [0, 1, 2]  # => [4, 5]

# << 
a << :baz # => [:foo, "bar", 2, :baz]

# <=>
[0, 1, 2] <=> [0, 1, 3] # => -1
[0, 1, 2] <=> [0, 1, 1] # => 1
[0, 1, 2] <=> [0, 1, 2] # => 0

# == 
[:foo, 'bar', 2] == [:foo, 'bar', 2.0] # => true

# []
a = [:foo, 'bar', 2]
a[0] # => :foo
a[2] # => 2

a[-1] # => 2
a[-2] # => "bar"
a[0, 4] # => [:foo, "bar", 2]
a[0..1] # => [:foo, "bar"]
a[0..-1] # => [:foo, "bar", 2]

# []=
a[0] = 'foo' # => "foo", a => ["foo", "bar", 2]
a[-1] = 'two' # => "two" a => [:foo, "bar", "two"]
a[0, 2] = 'foo' # => "foo" a => ["foo", two""]

# all?
[0, 1, :foo].all? # => true
[0, nil, 2].all?  # => false
[].all?           # => true
[0, 1, 2].all? { |element| element < 3 } # => true
['food', 'fool', 'foot'].all?(/foo/) # => true

# any?
[nil, 0, false].any? # => true
[nil, false].any? # => false
[].any? # => false
[0, 1, 2].any? {|element| element > 1 } # => true

# assoc(obj) 
a = [{foo: 0}, [2, 4], [4, 5, 6], [4, 5]]
a.assoc(4) # => [4, 5, 6]

# at(index)
a = [:foo, 'bar', 2]
a.at(0) # => :foo
a.at(2) # => 2

# bsearch {|element| ... } 
a = [0, 4, 7, 10, 12]
a.bsearch {|x| x >= 4 } # => 4
a.bsearch {|x| x >= 6 } # => 7
a.bsearch {|x| x >= -1 } # => 0
a.bsearch {|x| x >= 100 } # => nil

# map {|element| ...}
a.map {|x| x >= 4 } # => [false, true, true, true, true]
a.map {|x| x >= 6 } # => [false, false, true, true, true]

# clear
a.clear # => []

# combination(n) {|element| ... } 
a = [0, 1, 2]
a.combination(2)  {|combination| p combination }
=begin
[0, 1]
[0, 2]
[1, 2]
=end

#repeated_combination
a.repeated_combination(2) {|combination| p combination }
=begin
[0, 0]
[0, 1]
[0, 2]
[1, 1]
[1, 2]
[2, 2]
=end

# compact
a = [nil, 0, nil, 1, nil, 2, nil]
a.compact # => [0, 1, 2]

#concat(*other_arrays) 
a = [0, 1]
a.concat([2, 3], [4, 5]) # => [0, 1, 2, 3, 4, 5]

# count
[0, 1, 2].count # => 3
[0, 1, 2, 0].count(0) # => 2
[0, 1, 2, 3].count {|element| element > 1} # => 2

# cycle
output = []
[0, 1].cycle(2) {|element| output.push(element) } # => nil # output => [0, 1, 0, 1]

#delete
a = [:foo, 'bar', 'bar', 'bar']
a.delete('bar') # => "bar" a => [:foo, 2]

# delete_at 
a = [:foo, 'bar', 2]
a.delete_at(1) # => "bar" a => [:foo, 2]

# delete_if
a = [:foo, 'bar', 2, 'bat']
a.delete_if {|element| element.to_s.start_with?('b') } # => [:foo, 2]

# difference
[0, 1, 1, 2, 1, 1, 3, 1, 1].difference([1]) # => [0, 2, 3]
[0, 1, 2, 3].difference([3, 0], [1, 3]) # => [2]

# dig(index, *identifiers) 
a = [:foo, [:bat, :bam]]
a.dig(1) # => [[:bat, :bam]]
a.dig(1, 1) # => [:bam]
#a.dig(1, 1, 0) # => error
a.dig(1, 2, 0) # => nil

# drop(n) 
a = [0, 1, 2, 3, 4, 5]
a.drop(0) # => [0, 1, 2, 3, 4, 5]
a.drop(1) # => [1, 2, 3, 4, 5]
a.drop(2) # => [2, 3, 4, 5]

# drop_while 
a = [0, 1, 2, 3, 4, 5]
a.drop_while {|element| element < 3 } # => [3, 4, 5]

# each
a = [:foo, 'bar', 2]
a.each {|element|  puts "#{element.class} #{element}" }
=begin
Symbol foo
String bar
Integer 2
=end
# each_index 
a.each_index {|index|  puts "#{index} #{a[index]}" }

=begin
0 foo
1 bar
2 2
=end

# empty
[].empty? # => true

#eql?
a0 = [:foo, 'bar', 2]
a1 = [:foo, 'bar', 2]
a1.eql?(a0) # => true

# fetch
a.fetch(1) # => "bar"

# fill
a = ['a', 'b', 'c', 'd']
a.fill(:X) # => [:X, :X, :X, :X]

a = ['a', 'b', 'c', 'd']
a.fill(:X, 2) # => ["a", "b", :X, :X]
a.fill(:X, 1, 1) # => ["a", :X, :X, :X]]

# select
a = [:foo, 'bar', 2, :bam]
a1 = a.select {|element| element.to_s.start_with?('b') }  # a1 => ["bar", :bam]

# select!
a.select! {|element| element.to_s.start_with?('b') } # => ["bar", :bam]

#index 
a = [:foo, 'bar', 2, 'bar']
a.index('bar') # => 1
a.index {|element| element == 'bar' } # => 1
e = a.index
e.each {|element| element == 'bar' } # => 1

#first
a.first # => :foo
a.first(2) # => [:foo, "bar"]
a.first(50) # => [:foo, "bar", 2, "bar"]

#flatten 
a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten(0) # => [0, [1, [2, 3], 4], 5]
a.flatten(1) # => [0, 1, [2, 3], 4, 5]
a.flatten  # => [0, 1, 2, 3, 4, 5]

#flatten! 
a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten!(1) # => [0, 1, [2, 3], 4, 5]
a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten!(2) # => [0, 1, 2, 3, 4, 5]
a = [ 0, [ 1, [2, 3], 4 ], 5 ]
a.flatten! # => [0, 1, 2, 3, 4, 5]
[0, 1, 2].flatten!(1) # => nil

# include?
[0, 1, 2].include?(2) # => true
[0, 1, 2].include?(3) # => false

# replace
a = [:foo, 'bar', 2]
a.replace(['foo', :bar, 3]) # => ["foo", :bar, 3]

# insert 
a = [:foo, 'bar', 2]
a.insert(1, :bat, :bam) # => [:foo, :bat, :bam, "bar", 2]

#inspect
a = [:foo, 'bar', 2]
a.inspect # => "[:foo, \"bar\", 2]"

#intersection
[0, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]
[0, 0, 1, 1, 2, 3].intersection([0, 1, 2], [0, 1, 3]) # => [0, 1]

# join
a = [:foo, 'bar', 2]
a.join # => "foobar2"
a.join(" ") # => "foo bar 2"

# keep_if
a.keep_if {|element| element.to_s.start_with?('b') } # => ["bar", :bam]

#last
a = [:foo, 'bar', 2]
a.last # => 2
a.last(2) # => ["bar", 2]

# max
[0, 1, 2].max # => 2
[0, 1, 2, 3].max(3) # => [3, 2, 1]

#min
[0, 1, 2].min # => 0
[0, 1, 2, 3].min(3) # => [0, 1, 2]

#minmax
[0, 1, 2].minmax # => [0, 2]

# none?
[nil, false].none? # => true
[nil, 0, false].none? # => false
[].none? # => true
[0, 1, 2].none? {|element| element > 3 } # => true
[0, 1, 2].none? {|element| element > 1 } # => false

# one?
[nil, 0].one? # => true
[0, 0].one? # => false
[nil, nil].one? # => false
[].one? # => false

# pack
a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
a.pack("A3A3A3")   #=> "a  b  c  "
a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
n.pack("ccc")      #=> "ABC"

# permutation
a = [0, 1, 2]
a.permutation(2) {|permutation| p permutation }
=begin
[0, 1]
[0, 2]
[1, 0]
[1, 2]
[2, 0]
[2, 1]
=end

#repeated_permutation
a.repeated_permutation(2) {|permutation| p permutation }
=begin
[0, 0]
[0, 1]
[0, 2]
[1, 0]
[1, 1]
[1, 2]
[2, 0]
[2, 1]
[2, 2]
=end

# pop
a.pop # => 2
a # => [0, 1]
a.pop(2) # => []

# product
a = [0, 1, 2]
a1 = [3, 4]
a2 = [5, 6]
p = a.product(a1) # p => [[0, 3], [0, 4], [1, 3], [1, 4], [2, 3], [2, 4]]
p.size # => 6 # a.size * a1.size

p = a.product(a1, a2) # p => [[0, 3, 5], [0, 3, 6], [0, 4, 5], [0, 4, 6], [1, 3, 5], [1, 3, 6], [1, 4, 5], [1, 4, 6], [2, 3, 5], [2, 3, 6], [2, 4, 5], [2, 4, 6]]
p.size # => 12 # a.size * a1.size * a2.size

#push 
a = [:foo, 'bar', 2]
a.push(:baz, :bat) # => [:foo, "bar", 2, :baz, :bat]

# rassoc
a = [{foo: 0}, [2, 4,5], [4, 5, 6], [4, 5]]
a.rassoc(4) # => [2, 4,5]

# reject and reject!
a = [:foo, 'bar', 2, 'bat']
a1 = a.reject {|element| element.to_s.start_with?('b') }  # => [:foo, 2]

a = [:foo, 'bar', 2, 'bat']
a.reject! {|element| element.to_s.start_with?('b') } # => [:foo, 2]

#reverse and reverse!
a = ['foo', 'bar', 'two']
a1 = a.reverse  #a1 => ["two", "bar", "foo"]

a = ['foo', 'bar', 'two']
a.reverse! # => ["two", "bar", "foo"]

#rindex
a = [:foo, 'bar', 2, 'bar']
a.rindex('bar') # => 3

# rotate and rotate! 
a1 = a.rotate
a1 # => ["bar", 2, "bar", :foo]

a1 = a.rotate(2)
a1 # => [2, :foo, "bar"]

a = [:foo, 'bar', 2, 'bar']
a.rotate! # => ["bar", 2, "bar", :foo]

#sample
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.sample # => 1
a.sample # => 9
a.sample(3) # => [9, 2, 6]

#shift
a = [:foo, 'bar', 2]
a.shift # => :foo  a => ['bar', 2]
a.shift(2) # => ['bar', 2]  a => []

#shuffle and shuffle!
a = [1, 2, 3] #=> [1, 2, 3]
a.shuffle     #=> [2, 3, 1]  a => [1, 2, 3]
a = [1, 2, 3] #=> [1, 2, 3]
a.shuffle!    #=> [2, 3, 1]  a => [2, 3, 1]

#slice
a = [:foo, 'bar', 2]
a.slice!(1)  # => "bar"  a => [:foo, 2]
a.slice!(-1) # => 2  a # => ["bar"]

# sort and self!
a = 'abcde'.split('').shuffle  #a => ["e", "a", "b", "d", "c"] 
a1 = a.sort {|a, b| a <=> b }
a1 # => ["a", "b", "c", "d", "e"]
a2 = a.sort # a2 => ["e", "d", "c", "b", "a"]

a = 'abcde'.split('').shuffle  # a => ["b", "a", "e", "c", "d"]
a.sort!  # a => ["a", "b", "c", "d", "e"]

#take
a = [0, 1, 2, 3, 4, 5]
a.take(1) # => [0]
a.take(2) # => [0, 1]
a.take(50) # => [0, 1, 2, 3, 4, 5]

#take_while
a = [0, 1, 2, 3, 4, 5]
a.take_while {|element| element < 3 } # => [0, 1, 2]

#transpose
a = [[:a0, :a1], [:b0, :b1], [:c0, :c1]]
a.transpose # => [[:a0, :b0, :c0], [:a1, :b1, :c1]]

#union
[0, 1, 2, 3].union([4, 5], [6, 7]) # => [0, 1, 2, 3, 4, 5, 6, 7]
[0, 1, 1].union([2, 1], [3, 1]) # => [0, 1, 2, 3]

#uniq and uniq!
a = [0, 0, 1, 1, 2, 2]
a.uniq # => [0, 1, 2]
a.uniq! # a => [0, 1, 2]

#values_at
a = [:foo, 'bar', 2]
a.values_at(0, 2) # => [:foo, 2]


#zip
a = [:a0, :a1, :a2, :a3]
b = [:b0, :b1, :b2, :b3]
c = [:c0, :c1, :c2, :c3]
d = a.zip(b, c)  # d => [[:a0, :b0, :c0], [:a1, :b1, :c1], [:a2, :b2, :c2], [:a3, :b3, :c3]]