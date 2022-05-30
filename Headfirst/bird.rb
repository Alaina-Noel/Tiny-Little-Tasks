class Bird

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
        puts "#{@name} is flying to the #{destination}!"
    end

    def talk
        puts "Tweet Tweet says,#{@name}. "
    end

    def report_age
        puts "My age is #{@age}. And my name is #{@name}!!!"
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
