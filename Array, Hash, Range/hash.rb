h = {foo: 0, bar: 1, baz: 2}
Hash[h] # => {:foo=>0, :bar=>1, :baz=>2}

#Hash.new
h = Hash.new

h1 = {foo: 0, bar: 1}
h2 = {foo: 0, bar: 1, baz: 2}

# < & >
h1 < h2 # => true
h2 > h1 # => true

#<= & =>
h1 <= h2 # => true
h2 <= h1 # => false
h1 >= h1 # => false

# ==
h1 == h2 # => false
h3 = {baz: 2, bar: 1, foo: 0}
h1 == h3 # => true

# []
h = {foo: 0, bar: 1, baz: 2}
h[:foo] # => 0

# []=
h = {foo: 0, bar: 1}
h[:baz] = 2 # => 2

# any?
h.any?([:bar, 1]) # => true
h.any?([:bar, 0]) # => false

# assoc
h.assoc(:bar) # => [:bar, 1]

# compact
h = {foo: 0, bar: nil, baz: 2, bat: nil}
h1 = h.compact # h1 => {:foo=>0, :baz=>2}

h = {foo: 0, bar: nil, baz: 2, bat: nil}
h.compact! # => {:foo=>0, :baz=>2}

# delete
h = {foo: 0, bar: 1, baz: 2}
h.delete(:bar) # => 1
h # => {:foo=>0, :baz=>2}

# delete_if
h = {foo: 0, bar: 1, baz: 2}
h.delete_if {|key, value| value > 0 } # => {:foo=>0}

#dig
h = {foo: {bar: {baz: 2}}}
h.dig(:foo) # => {:bar=>{:baz=>2}}
h.dig(:foo, :bar) # => {:baz=>2}
h.dig(:foo, :bar, :baz) # => 2
h.dig(:foo, :bar, :BAZ) # => nil

#each_pair
h = {foo: 0, bar: 1, baz: 2}
h.each_pair {|key, value| puts "#{key}: #{value}"} # => {:foo=>0, :bar=>1, :baz=>2}

# each_key
h = {foo: 0, bar: 1, baz: 2}
h.each_key {|key| puts key }  # => {:foo=>0, :bar=>1, :baz=>2}

# each_pair
h = {foo: 0, bar: 1, baz: 2}
h.each_pair {|key, value| puts "#{key}: #{value}"} # => {:foo=>0, :bar=>1, :baz=>2}

# each_value
h = {foo: 0, bar: 1, baz: 2}
h.each_value {|value| puts value } # => {:foo=>0, :bar=>1, :baz=>2}

# empty?
{}.empty? # => true
{foo: 0, bar: 1, baz: 2}.empty? # => false

# eql?
h1 = {foo: 0, bar: 1, baz: 2}
h2 = {foo: 0, bar: 1, baz: 2}
h1.eql? h2 # => true
h3 = {baz: 2, bar: 1, foo: 0}
h1.eql? h3 # => true

# except
h = { a: 100, b: 200, c: 300 }
h.except(:a)          #=> {:b=>200, :c=>300}

# fetch
h = {foo: 0, bar: 1, baz: 2}
h.fetch(:bar) # => 1

h = {foo: 0, bar: 1, baz: 2}
h.fetch_values(:baz, :foo) # => [2, 0]

#select and select!
h = {foo: 0, bar: 1, baz: 2}
h.select {|key, value| value < 2 } # => {:foo=>0, :bar=>1}

h = {foo: 0, bar: 1, baz: 2}
h.select! {|key, value| value < 2 }  => {:foo=>0, :bar=>1}

#flatten
h = {foo: 0, bar: [:bat, 3], baz: 2}
h.flatten # => [:foo, 0, :bar, [:bat, 3], :baz, 2]
h.flatten(1) # => [:foo, 0, :bar, [:bat, [:baz, [:bat]]]]

#replace
h = {foo: 0, bar: 1, baz: 2}
h.replace({bat: 3, bam: 4}) # => {:bat=>3, :bam=>4}

#inspect
h = {foo: 0, bar: 1, baz: 2}
h.inspect # => "{:foo=>0, :bar=>1, :baz=>2}"

#invert
h = {foo: 0, bar: 1, baz: 2}
h1 = h.invert  #h1 => {0=>:foo, 1=>:bar, 2=>:baz}

#keep_if
h = {foo: 0, bar: 1, baz: 2}
h.keep_if { |key, value| key.start_with?('b') } # => {:bar=>1, :baz=>2}

# key
h = {foo: 0, bar: 2, baz: 2}
h.key(0) # => :foo
h.key(2) # => :bar
h.keys # => [:foo, :bar, :baz]

#length
h.length # => 3

#length
h1 = {bat: 3, bar: 4}
h2 = {bam: 5, bat:6}
h.merge(h1, h2) # => {:foo=>0, :bar=>4, :baz=>2, :bat=>6, :bam=>5}

#assoc
h = {foo: 0, bar: 1, baz: 1}
h.rassoc(1) # => [:bar, 1]

#reject and reject!
h = {foo: 0, bar: 1, baz: 2}
h1 = h.reject {|key, value| key.start_with?('b') } # h1 => {:foo=>0}
h.reject! {|key, value| value < 2 } # => {:baz=>2}

#replace
h = {foo: 0, bar: 1, baz: 2}
h.replace({bat: 3, bam: 4}) # => {:bat=>3, :bam=>4}

#shift
h = {foo: 0, bar: 1, baz: 2}
h.shift # => [:foo, 0]  h => {:bar=>1, :baz=>2}

#length
h.length # => 2

#slice
h.slice(:baz, :foo) # => {:baz=>2, :foo=>0}

#store
h = {foo: 0, bar: 1}
h[:foo] = 2 # => 2
h.store(:bar, 3) # => 3 h => {:foo=>2, :bar=>3}

# to_a
h = {foo: 0, bar: 1, baz: 2}
h.to_a # => [[:foo, 0], [:bar, 1], [:baz, 2]]

#to_h
h = {foo: 0, bar: 1, baz: 2}
h1 = h.to_h {|key, value| [value, key] }
h1 # => {0=>:foo, 1=>:bar, 2=>:baz}

# to_proc
h = {foo: 0, bar: 1, baz: 2}
proc = h.to_proc
proc.class # => Proc
proc.call(:foo) # => 0
proc.call(:bar) # => 1
proc.call(:nosuch) # => nil