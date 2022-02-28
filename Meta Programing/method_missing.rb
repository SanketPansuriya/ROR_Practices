class Students
 attr_accessor :name1, :email1, :branch1, :sem1
  def assign_values(values)
    values.each_key do |k, v|
      self.send("#{k}=", values[k])
    end
  end
  
  def method_missing method, *args, &block
    if(method[-1] != "=")
      #puts "#{method} and #{args[0]}"
      self.send("#{method}1=",args[0])
    else 
      puts "No method Found"
    end
  end
end



student_info = {
  name: 'Sanket',
  email: 'spanasuriya892@rku.ac.in',
  branch: 'B.Tech Computer',
  sem: "8th"
}

student1 = Students.new

## If we don't define method_missing then below line will give error
student1.name = student_info[:name]



puts "--------- Method missing way --------------"
student1.name(student_info[:name])
student1.branch(student_info[:branch])
student1.email(student_info[:email])
student1.sem(student_info[:sem])
puts student1.inspect