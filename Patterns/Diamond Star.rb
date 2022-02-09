puts "Enter lines"
#n = gets.to_i
n = 5
i = 1

loop do
  (n - i).times { print " "}

  1.upto(2*i-1) { |a|
    if a == 1 ||  a == 2*i-1 
      print "*"
    else 
      print " "
   
    end
    
  }
  puts ""
  
  break if n == i
  i+=1
end

loop do
  (n-i+1).times { print " "}

  1.upto(2*(i-1)) { |a|
    if a == 1 || a == 2*(i-1)-1
      print "*"
    else 
      print " "
   
    end
    
  }
  puts ""
  
  break if i == 0
  i-=1
end

