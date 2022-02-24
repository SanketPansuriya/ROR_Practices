def print_exception(exception, explicit)
  puts "[#{explicit ? 'EXPLICIT' : 'INEXPLICIT'}] #{exception.class}: #{exception.message}"
end

## NoMemoryError
begin
    limit = 2**31 - 1
    puts "Limit: #{limit}"
    puts "a" * limit
rescue NoMemoryError => e
    print_exception(e, true)
end

## ScriptError
  ### LoadError
  #### LoadError exception occures if file path don't exits
  begin
    require 'invalid/file/path'
  rescue ScriptError => e
      print_exception(e, true)
  rescue Exception => e
      print_exception(e, false)
  end


  ### NotImplementedError
  begin
    Process.groups
  rescue NotImplementedError => e
      print_exception(e, true)
  end
  

  ### SyntaxError
  #### It's occures if evaluating syntactically invalid code
  begin
    eval("1+2=3")
  rescue ScriptError => e
      print_exception(e, true)
  rescue Exception => e
      print_exception(e, false)
  end

## SignalException

begin
    # Sending `TERM` signal to active process
    Process.kill('TERM', Process.pid)
rescue SignalException => e
    print_exception(e, true)
rescue Exception => e
    print_exception(e, false)
end

    ### Interrupt
    begin
        # Loop indefinitely
        count = 0
        while true
            count = count + 1
            puts count
            sleep 1
        end
    rescue SignalException => e
        print_exception(e, true)
    end  

## StandardError


  ### ArgumentError
  begin
    # Create array of numbers 1 through 10
    data = *(1...10)
    # Try to grab a random sample from array, with too many arguments
    puts data.sample(3, 5)
  rescue ArgumentError => e
    print_exception(e, true)
  end
  
  ### IOError
  begin
    File.open("/etc/hosts") {|f| f << "example"}
  rescue IOError => e
    print_exception(e,true)
    
  end

    #### EOFError
    begin
      file = File.open("/etc/hosts")
      file.read
      file.readline #=> EOFError: end of file reached
    rescue IOError => e  ## This will raise EOFError
      print_exception(e,true)
    end
    
  ### IndexError
  begin
    index = 5
    names = ["Sanket", "Akash", "Yash", "Mintanshu"]
    puts names.fetch(index)
  rescue IndexError => e
    print_exception(e, true)
  end
  
  
  ### LocalJumpError
  begin
    def get_me_a_return
      Proc.new { return 42 }
    end
    get_me_a_return.call
  rescue LocalJumpError => e
    print_exception(e, true)
  
  end
  
  ### NameError
    begin
        # Assign an invalid (lowercase) constant value of :title.
        String.const_set :title, 'The Shining'
        puts String::title
    rescue NameError => e
        print_exception(e, true)
    end  
  
    #### NoMethodError
    class No_Method_Error
    end
    begin
      No_Method_Error.new.Hello
    rescue NameError => e
      print_exception(e,true)
    end


  ### RangeError
  begin
    puts [1,2,3,4,5].drop(1 << 100)
  rescue RangeError => e
    print_exception(e, true)
  end
  
    #### FloatDomainError
    begin
      Float::INFINITY.to_r 
     rescue FloatDomainError => e
       print_exception(e, true)
    end
    
  
  ### RegexpError
  begin
    Regexp.new("?")
  rescue RegexpError => e
    print_exception(e, true)
  end
  
  ### RuntimeError
    begin
        # Declare mutable string
      name = 'Sanket Panasuriya'.freeze
      name << ' From Bacancy!'
      puts name
    rescue RuntimeError => e
        print_exception(e, true)
    else
        print_exception(e, false)
    end    
   
  ### SecurityError  => This Error not occure in letest version of ruby
  begin
    $SAFE = 3
    name = "Bob"
    eval %{
        puts "Is #{name} tainted? #{name.tainted? ? 'Yes' : 'No'}"
    }
  rescue SecurityError => e
      print_exception(e, true)
  end
  
  ### SystemCallError
    begin
        File.open('missing/file/path')        
    rescue SystemCallError => e
        print_exception(e, true)
    end
  
  ### SystemStackError
  def me_myself_and_i
    me_myself_and_i
  end
  
  begin
    me_myself_and_i
  rescue SystemStackError => e
    print_exception(e, true)
  end
  
  ### ThreadError
  begin
    Thread.stop
  rescue ThreadError => e
    print_exception(e,true)
  end
  
  ### TypeError
  begin
    [1, 2, 3].first("two")
  rescue TypeError => e
    print_exception(e,true)
  end
  
  ### ZeroDivisionError
  begin
    puts 10/0
  rescue Exception => e
    print_exception(e, true)
  end
  

## SystemExit
begin
  exit
rescue SystemExit => e
  print_exception(e,true)
end

## fatal

begin
  # Get the fatal exception object.
  # Loop through all objects in ObjectSpace.
  fatal = ObjectSpace.each_object(Class).find do |klass|
      # Return match of 'fatal' object.
      klass < Exception && klass.inspect == 'fatal'
  end
  # Raise new fatal exception object.
  raise fatal.new('Uh oh, something is seriously broken!')
rescue fatal => e
  # Try to rescue our fatal exception object.
  print_exception(e,true)
end   

