# Defining & Calling the method
def sayHi 
  puts "Hello"
end

sayHi

# Passing parameters to methods
def sayHi(name, age)
  puts "Hello #{name}, Your age is #{age}"
end

sayHi("Sanket", 20)

# Default Arguments
def sayHi(name="Tommy", age = 10)
  puts "Hello #{name}, Your age is #{age}"
end

sayHi()

# Variable Number of Parameters
def Parameters(*others)
  puts "Number of arguments are #{others.length}"
  for i in others
    puts "Parameter is #{i}"
  end
end

Parameters("Hello",","," How are you?")

# Named Arguments
def sayHi name:, city:, state:
  puts "Hello #{name}"
  puts "Your city is #{city}, #{state}"
end

sayHi(name: "Sanket", state: "Gujarat", city: "Junagadh")