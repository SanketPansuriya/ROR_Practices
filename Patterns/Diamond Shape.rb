puts "Enter lines"
n = gets.to_i
i = n
loop do
  (n-1).times { print " "}
  (i-n+1).times { print "* "}
  puts ""
  
  break if n == 1
  n-=1
end

loop do
  (n).times { print " "}
  (i-n).times { print "* "}

  puts ""
  
  break if n == (i-1)
  n+=1
end