
# ==
(0..2) == (0..2)            #=> true
(0..2) == Range.new(0,2)    #=> true
(0..2) == (0...2)           #=> false

#  begin
(1..10).begin   #=> 1

#bsearsh
ary = [0, 4, 7, 10, 12]
(0...ary.size).bsearch {|i| ary[i] >= 4 } #=> 1
(0...ary.size).bsearch {|i| ary[i] >= 6 } #=> 2
(0...ary.size).bsearch {|i| ary[i] >= 8 } #=> 3
(0...ary.size).bsearch {|i| ary[i] >= 100 } #=> nil

# cover
("a".."z").cover?("c")  #=> true
("a".."z").cover?("5")  #=> false
("a".."z").cover?("cc") #=> true
("a".."z").cover?(1)    #=> false
(1..5).cover?(2..3)     #=> true
(1..5).cover?(0..6)     #=> false
(1..5).cover?(1...6)    #=> true

# each 
(10..15).each {|n| print n, ' ' }
# prints: 10 11 12 13 14 15

# end
(1..10).end    #=> 10
(1...10).end   #=> 10

# eql?
(0..2).eql?(0..2)            #=> true
(0..2).eql?(Range.new(0,2))  #=> true
(0..2).eql?(0...2)           #=> false

#exclude_end?
(1..5).exclude_end?     #=> false
(1...5).exclude_end?    #=> true

# first
(10..20).first     #=> 10
(10..20).first(3)  #=> [10, 11, 12]

#include
("a".."z").include?("g")   #=> true
("a".."z").include?("A")   #=> false
("a".."z").include?("cc")  #=> false

#last
(10..20).last      #=> 20
(10...20).last     #=> 20
(10..20).last(3)   #=> [18, 19, 20]
(10...20).last(3)  #=> [17, 18, 19])

#max
(10..20).max                        #=> 20
(10..20).max(2)                     #=> [20, 19]
(10...20).max                       #=> 19
(10...20).max(2)                    #=> [19, 18]

#include?
(10..20)include?(11) # true
("a".."z").include?("A")   #=> false
("a".."z").include?("cc")  #=> false

#min, minmax
(10..20).min    #=> 10
(10...20).minmax #  => [10, 19]
