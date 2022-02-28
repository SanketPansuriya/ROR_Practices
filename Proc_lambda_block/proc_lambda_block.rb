## Block
print "*"*20
print " Block "
print "*"*20
puts

    def print_once
      yield
    end
    print_once { puts "Block is being run" }
    
    
    def some_method *args, &block
     p args
     block.call
    end
    some_method 1, 3, 5, 7 do
     puts "Hello there!"
    end
  
=begin
    output:
    [1, 3, 5, 7]
    Hello there!
=end
  
  
# Proc  
  
print "*"*20
print " Proc "
print "*"*20
puts
  
  
  say_hello_proc = Proc.new do
    puts "Hello !"
  end
  
  say_hello_proc.call

  ## Using Passing Parameter
    say_hello = Proc.new do |name|
      puts "Hello #{name}"
    end
    
    say_hello.call "Sanket"
  
  
  # Function that returns a proc
    def return_proc
      Proc.new do |name|
        puts "The length of your name is #{name.length}"
      end
    end
  
    name_length = return_proc
    name_length.call "Sanket Pansuriya"
  
  
  # An example of passing a proc to method
    def execute_proc some_proc
      some_proc.call
    end
  
  
    say_hello = Proc.new do
      puts "An example of passing a proc to method"
    end
    execute_proc say_hello
  
  
    get_odd = Proc.new do |num|
      num unless num % 2 == 0
    end
    numbers = [1,2,3,4,5,6,7,8]
    puts "Proc and Array Example"
    p numbers.collect(&get_odd)
    p numbers.select(&get_odd)
    p numbers.map(&get_odd)

#Lambda
  print "*"*20
  print " Lambda "
  print "*"*20
  puts
  
  print_hello = lambda do
  puts "Hello World from lambada!"
  end
  print_hello.call
  print_hello.===
  print_hello.()
  print_hello.[]
  
  
  
  ## Passing Argument to Lambda
    odd_or_even = lambda do |num|
      if num % 2 == 0
      puts "#{num} is even"
      else
      puts "#{num} is odd"
      end
    end
    odd_or_even.call 1
    odd_or_even.call 2
  
  

print "*"*20
print " Proc vs Lambda"
print "*"*20
puts

  print "-"*10
  print " First Difference "
  print "-"*10
  puts
  
    lambda = -> (x) { x.to_s }
    begin
      lambda.call
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end
    
    proc = Proc.new {|x| x.to_s }
    puts proc.call
    
  
  print "-"*10
  print " Second Difference "
  print "-"*10
  puts
  
    def calling_lambda(some_lambda)
      puts "Started calling_lambda"
      puts some_lambda.call
      puts "Finished calling_lambda function"
    end

    def calling_proc(some_proc)
      puts "Started calling_proc"
      puts some_proc.call
      puts "In calling_proc function"
    end
    
    
    some_lambda = lambda{ return "In Lambda" }
    some_proc = Proc.new { return "In Proc" }
    
    calling_lambda(some_lambda)
    calling_proc(some_proc)