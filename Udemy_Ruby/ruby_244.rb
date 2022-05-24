class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi my name is #{name} & my age is #{age}."
  end
end

alaina = Employee.new("Alaina", 32)
puts alaina.class
puts alaina.introduce

class Manager < Employee
end

class Worker < Employee
end


leah = Manager.new("leah", 33)
allie = Worker.new("allie", 32)

puts allie.introduce
p allie.class.ancestors
