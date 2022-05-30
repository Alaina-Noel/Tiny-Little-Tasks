class Bird

attr_accessor :name , :age

  def report_age
    puts "My age is #{@age}. And my name is #{@name}!!!"
  end

end

class Dog
  def talk(name)
    puts "#{name} says Bark bark!"
  end

  def move(name, destination)
    puts "#{name} is running to the #{destination}"
  end

end

class Fish
  def talk(name)
    puts "#{name} says Glug glug"
    name = "Fishyfish"
  end
  def move(name, destination)
    puts "#{name} is swimming to the #{destination}."
  end
end



salvador = Bird.new
salvador.name = "Salvador"
salvador.age = 10
pete = Bird.new
pete.name = "Pete"
pete.age = 2

salvador.report_age
pete.report_age
