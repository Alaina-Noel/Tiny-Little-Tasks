class Animals

    attr_reader :name , :age

    def name= (name)
        raise "The name can't be blank!" if name == ""
        @name = name
    end

    def age= (age)
        raise "Age can't be negative!" if age < 1
        @age = age
    end

    def move(destination)
        puts "#{@name} is running to the #{destination}!"
    end

    def talk
        puts " 'I'm an animal!' says,#{@name}. "
    end

    def report_age
        puts "My age is #{@age}. And my name is #{@name}!!!"
    end

end

class Bird < Animals

    def talk
        puts "Tweet Tweet says, #{@name}. "
    end

    def move(destination)
        puts "#{@name} is flying to the #{destination}. "
    end

end

class Dog < Animals

    def talk
        puts "Bark Bark! says, #{@name}. "
    end

    def to_s
        "#{@name} is #{@age} years old."
    end

end

class Fish < Animals

    def talk
        puts "Glug Glug says, #{@name}. "
    end

    def move(destination)
        puts "#{@name} is swimming to the #{destination}!"
    end

    def to_s
        "#{@name} is #{@age} years old."
    end
end

class Armadillo < Animals
    def move(destination)
        puts "#{@name} unrolls!"
        super
    end
end

salvador = Bird.new
salvador.name = "Salvador"
salvador.age = 10
pete = Bird.new
pete.name = "Pete"
pete.age = 4


pete.report_age
pete.talk
salvador.talk
pete.move("moon")

polly = Fish.new
polly.name = "Polly"
polly.age = 900
polly.talk
polly.move("sea")

armo = Armadillo.new
armo.name = "Armo"
armo.move("pillow")

ellie = Dog.new
ellie.name = "Ellie"
ellie.age = 7
ellie.talk

#this already has the .to_s called on it when you use puts
puts ellie, polly

#this already has the .to_s called on it when you use puts so using .to_s is repetetive.
puts ellie.to_s

#this DOES NOT have .to_s called on it so you'll see the class & all instance vars
p ellie

#this has the .to_s called on it explicitly
p ellie.to_s

#this has the .to_s called on it implicitly.
print ellie
