class Students
  attr_accessor :name, :email, :branch, :sem

  def assign_values(values)
    values.each_key do |k, v|
      self.send("#{k}=", values[k])
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

puts "--------- Normal way --------------"
student1.name = student_info[:name]
student1.branch = student_info[:branch]
student1.email = student_info[:email]
student1.sem = student_info[:sem]
puts student1.inspect

puts "--------- Meta Programing way --------------"
student2 = Students.new
student2.assign_values(student_info)

puts student2.inspect
