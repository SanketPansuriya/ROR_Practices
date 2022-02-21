puts "\nLocal Variable"
puts "*"*50

# Local varibale 

local_variable = 10

def local
  local_variable = 20  ## Local variable for local function
  puts local_variable  ## ==> 20 
  
end
local
puts local_variable


puts "\nInstance Variable"
puts "*"*50
## Instance Variable @

class User   
  def initialize(name)   
    @name=name   
  end   
  def display()   
    puts "Hii #@name"   
  end   
end


user1 = User.new("Sanket")
user2 = User.new("Bhumik")
user3 = User.new("Yash")

user1.display
user2.display
user3.display

puts "\nClass Variable"
puts "*"*50

## Class Variable
class User   
  @@users = 0
  def initialize(name)   
    @name=name   
    @@users += 1
  end   
  def display()   
    puts "Hii #@name"   
    puts "Now total users are #@@users"
  end   
  def no_of_user()
    puts "Total nunber of users are #@@users"
  end
end


user1 = User.new("Sanket")
user1.display
user2 = User.new("Bhumik")
user2.display
user3 = User.new("Yash")
user3.display

user1.no_of_user

puts "\nGloble Variable"
puts "*"*50

## Globle Variables
$users = 0
class User1   
  @@users = 0
  def initialize(name)   
    @name=name   
    @@users += 1
    $users = $users + 1
  end   
  def display()   
    puts "Hii #@name from User1"   
    puts "Now total users of User1 are #@@users\n\n"
  end   
  def no_of_user()
    puts "Total nunber of users of User1 are #@@users\n"
  end
end

class User2   
  @@users = 0
  def initialize(name)   
    @name=name   
    @@users += 1
    $users = $users + 1
  end   
  def display()   
    puts "Hii #@name from User2"   
    puts "Now total users of User2 are #@@users\n"
    puts
  end   
  def no_of_user()
    puts "Total nunber of users of User2 are #@@users\n"
  end
end

puts "\ncurrentaly globel users are #$users"
user1 = User1.new("Sanket")
user1.display
user2 = User1.new("Bhumik")
user2.display
user3 = User2.new("Yash")
user3.display

user1.no_of_user
user3.no_of_user
puts
puts "From Globle variable"
puts "-"*20
puts "Total number of users are #$users"


puts "\nConstant Variable"
puts "*"*50

class Users 
  No_User = $users
end

puts Users::No_User  # This will give the output of to globle variable $users in this example $users = 3 so this will give output as a 3
puts Users::No_User += 1
=begin
This will throw an warning but generate the output
variable.rb:131: warning: already initialized constant Users::No_User
variable.rb:126: warning: previous definition of No_User was here
==> 4
=end