class Developer
end

Developer.instance_eval do
  puts "instance_eval - self is: " + self.to_s
  def backend
    puts "inside a method self is: " + self.to_s
  end
end
# "instance_eval - self is: Developer"

Developer.backend
# "inside a method self is: Developer"

Developer.class_eval do
  puts "class_eval - self is: " + self.to_s
  def backend
    puts "inside a method self is: " + self.to_s
  end
end


d = Developer.new()
d.backend


Developer.backend