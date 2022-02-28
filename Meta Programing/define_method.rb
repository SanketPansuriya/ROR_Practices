class GetSet
  def self.getset(*args)
    args.each do |field|
      getter(field)
      setter(field)
    end
  end

  def self.getter(*args)
    args.each do |field|
      define_method(field) do
        instance_variable_get("@#{field}")
      end
    end
  end

  def self.setter(*args)
    args.each do |field|
      define_method("#{field}=") do |value|
        instance_variable_set("@#{field}", value)
      end
    end
  end
end

class Students < GetSet
  getset :name, :branch, :email, :sem
  
end

student_info = {
  name: 'Sanket',
  email: 'spanasuriya892@rku.ac.in',
  branch: 'B.Tech Computer',
  sem: "8th"
}

student1 = Students.new

# puts "--------- Normal way --------------"
student1.name = student_info[:name]
student1.branch = student_info[:branch]
student1.email = student_info[:email]
student1.sem = student_info[:sem]
puts student1.inspect

